/*
 * i8c
 * Copyright (C) 2016 i8c NV
 * mailto:contact AT i8c DOT be
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

package be.i8c.codequality.sonar.plugins.sag.webmethods.flow.visitor.check;

import be.i8c.codequality.sonar.plugins.sag.webmethods.flow.sslr.NodeGrammar;
import be.i8c.codequality.sonar.plugins.sag.webmethods.flow.sslr.types.FlowAttTypes;
import be.i8c.codequality.sonar.plugins.sag.webmethods.flow.sslr.types.FlowTypes;
import be.i8c.codequality.sonar.plugins.sag.webmethods.flow.visitor.check.type.FlowCheck;
import be.i8c.codequality.sonar.plugins.sag.webmethods.flow.visitor.check.type.FlowCheckRuleType;

import com.sonar.sslr.api.AstNode;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.sonar.api.rules.RuleType;
import org.sonar.check.Priority;
import org.sonar.check.Rule;
import org.sonar.squidbridge.annotations.SqaleConstantRemediation;

/**
 * Checks interface comments being set. This is useful in combination with document-generator.
 * 
 * @author DEWANST
 *
 */
@Rule(key = "S00004", name = "Interfaces of services should contain comments", 
    priority = Priority.MINOR, tags = {
    Tags.BAD_PRACTICE })
@SqaleConstantRemediation("2min")
@FlowCheckRuleType (ruletype = RuleType.CODE_SMELL)
public class InterfaceCommentsCheck extends FlowCheck {

  static final Logger logger = LoggerFactory.getLogger(InterfaceCommentsCheck.class);

  @Override
  public void init() {
    logger.debug("++ Initializing {} ++", this.getClass().getName());
    subscribeTo(NodeGrammar.REC_FIELDS);
  }

  @Override
  public void visitNode(AstNode astNode) {
    for (AstNode record : astNode.getChildren(NodeGrammar.RECORD)) {
      for (AstNode value : record.getChildren(NodeGrammar.VALUE)) {
        for (AstNode attr : value.getChildren(NodeGrammar.ATTRIBUTES)) {
          for (AstNode name : attr.getChildren(FlowAttTypes.NAME)) {
            if (name.getTokenValue().equals("NODE_COMMENT")) {
              if (attr.getParent().getChildren(FlowTypes.ELEMENT_VALUE).size() <= 0) {
                logger.debug("++ Comment VIOLATION found: " + value.getTokenLine() + " ++");
                getContext().createLineViolation(this, "Add comment", value);
              }
            }
          }
        }
      }
    }
  }

  @Override
  public boolean isFlowCheck() {
    return false;
  }

  @Override
  public boolean isNodeCheck() {
    return true;
  }

  @Override
  public boolean isTopLevelCheck() {
    return false;
  }
}