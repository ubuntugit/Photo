package cc.gzvtc.admin.service;

import cc.gzvtc.common.service.IService;
import cc.gzvtc.model.TAdmin;

/**
 * 
 * @author joe 2018年5月12日
 *
 */
public interface IAdminService extends IService<TAdmin> {
	
	TAdmin login(TAdmin admin);

}
