package com.oaec.OnlineStore.dao;

import java.util.List;
import java.util.Map;

public interface EvaluationDao {
    List<Map<String,Object>> queryByProductId(Integer productId);
    Map<String,List<Map<String, Object>>> queryGradeByProductId(Integer productId);
}
