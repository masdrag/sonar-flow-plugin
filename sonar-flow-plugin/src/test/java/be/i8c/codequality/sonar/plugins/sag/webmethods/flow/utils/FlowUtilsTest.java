package be.i8c.codequality.sonar.plugins.sag.webmethods.flow.utils;

import java.io.File;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import junit.framework.Assert;

public class FlowUtilsTest {

final static Logger logger = LoggerFactory.getLogger(FlowUtilsTest.class);
	
	@Test
	public void getQualifiedName() {
		Assert.assertEquals(FlowUtils.getQualifiedName(new File("D:\\temp\\SoftwareAG\\IntegrationServer\\instances\\default\\packages\\myTestPackage\\ns\\myTestPackage\\new_flowservice\\flow.xml")),"myTestPackage:new_flowservice");
	}
}
