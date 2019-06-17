package com.oaec.OnlineStore.service.impl;

import com.oaec.OnlineStore.dao.EvaluationDao;
import com.oaec.OnlineStore.dao.impl.EvaluationDaoImpl;
import com.oaec.OnlineStore.service.EvaluationService;

import java.util.List;
import java.util.Map;

public class EvaluationServiceImpl implements EvaluationService {
    private EvaluationDao evaluationDao = new EvaluationDaoImpl();
    @Override
    public List<Map<String, Object>> query(String productId) {
        return evaluationDao.queryByProductId(Integer.parseInt(productId));
    }

    @Override
    public Map<String, List<Map<String, Object>>> queryGrade(String productId) {
        return evaluationDao.queryGradeByProductId(Integer.parseInt(productId));
    }
}
