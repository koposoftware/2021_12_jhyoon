package kr.ac.kopo.backtest.dao;

import java.util.List;

import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestResultAccVO;
import kr.ac.kopo.backtest.vo.BackTestResultFlucVO;
import kr.ac.kopo.backtest.vo.BackTestResultSetVO;
import kr.ac.kopo.backtest.vo.BackTestTransResultVO;

public interface BackTestDAO {

	void insertCompo(BackTestCompoVO compVO);

	void getBacktestProcedure(BackTestCompoVO compVO);

	List<BackTestTransResultVO> getTransResult(BackTestCompoVO compVO);

	BackTestCompoVO getPortNo(BackTestCompoVO compVO);

	List<BackTestResultAccVO> getAccResult(BackTestCompoVO compVO);

	BackTestCompoVO getPortCondi(int portNo);

	List<BackTestResultFlucVO> getStockDayList(BackTestCompoVO compVO);


	void editContent(BackTestCompoVO compVO);

	List<BackTestResultFlucVO> getStockAVGList(BackTestCompoVO compVO);

	BackTestResultSetVO getTotalResult(BackTestCompoVO compVO);

	List<BackTestResultAccVO> getAccReverseResult(BackTestCompoVO compVO);

}
