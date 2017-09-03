package org.jasonyang.service;

import java.util.List;

import org.jasonyang.model.Archive;

public abstract interface ArchiveService {

	/**
	 * 
	 * @param state    文档状态
	 * @param tag      文档标签
	 * @param pageNum  页数
	 * @param pageSize 每页行数 
	 * @return
	 */
	public abstract List<Archive> queryArchiveList(int state, String tag, Integer pageNum, Integer pageSize);

	public abstract int countArchives(String paramString);

	public abstract int saveArchive(Archive paramArchive);

	public abstract Archive queryArchiveById(String id, int type);

	public int deleteArchiveById(String id);

	/**
	 * 查询所有文档简要信息,存至redis
	 */
	public void setAllArchivesInfoToRedis();

	/**
	 * 从redis获取所有文档简要信息
	 * @return
     */
	public List<Archive> getAllArchivesInfo();
}