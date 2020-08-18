package tp.kits3.livedinner.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import tp.kits3.livedinner.HomeController;

// Service mean helper to controller
// Controller <-> Service    <-> Database
// req, resp    logic/process   data storage
@Service
public class ModelService {
	private static final Logger logger = LoggerFactory.getLogger(ModelService.class);
	public ModelService() {
		
		logger.info("{}.","init");
	}
	
	public void getModelData() {
		logger.info("{}.","get data");
	}
}
