package cc.gzvtc.banner.service.impl;


import org.springframework.stereotype.Service;

import cc.gzvtc.banner.service.IBannerService;
import cc.gzvtc.common.service.BaseService;
import cc.gzvtc.model.TBanner;

/**
 * 
 * @author joe 2018年5月12日
 *
 */
@Service(value = "bannerService")
public class BannerServiceImpl extends BaseService<TBanner> implements IBannerService {

}
