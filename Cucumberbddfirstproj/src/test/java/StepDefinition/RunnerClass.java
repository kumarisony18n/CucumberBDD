package StepDefinition;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features="C:\\Users\\abhij\\eclipse-workspace\\Cucumberbddfirstproj\\src\\test\\resources\\Features",glue={"StepDefinition"})
public class RunnerClass {

}
