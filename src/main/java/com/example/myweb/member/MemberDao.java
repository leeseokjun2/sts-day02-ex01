package com.example.myweb.member;

import java.util.List;

public interface MemberDao {

	List<MemberDto> selectAll();

	MemberDto findById(MemberDto dto);

	void insert(MemberDto dto);

	void update(MemberDto dto);

	void delete(MemberDto dto);


}