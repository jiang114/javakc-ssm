package com.zhg.javakc.modules.lead.apply.service;
import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.lead.apply.dao.ApplyDao;
import com.zhg.javakc.modules.lead.apply.entity.ApplyEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * @author liudong
 * @version 1.0
 * @date 2019/8/23 14:08
 */

@Service
public class ApplyService extends BaseService<ApplyDao, ApplyEntity> {

    @Autowired
    private ApplyDao applyDao;
    public Page<ApplyEntity> queryAll(ApplyEntity applyEntity, Page<ApplyEntity> page){
        applyEntity.setPage(page);
        Page<ApplyEntity> page1 = page.setList(applyDao.findList(applyEntity));
        return page1;
    }
}
