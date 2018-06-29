package cc.gzvtc.info.service;

import java.util.List;

import cc.gzvtc.common.service.IService;
import cc.gzvtc.model.TInfomation;

/**
 * 
 * @author joe 2018年5月12日
 *
 */
public interface IInfoService extends IService<TInfomation> {
	
	List<TInfomation> getAllInfo();
}
