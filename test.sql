SELECT * FROM EMP;
-- 1. **EMP테이블에서 COMM 의 값이 NULL이 아닌 정보 조회
SELECT * FROM EMP
WHERE COMM IS NOT NULL;
-- 2. **EMP테이블에서 커미션을 받지 못하는 직원 조회
SELECT * FROM EMP
WHERE COMM IS NULL OR COMM = 0;
-- 3. **EMP테이블에서 관리자가 없는 직원 정보 조회
SELECT * FROM EMP
WHERE MGR IS NULL;
-- 4. **EMP테이블에서 급여를 많이 받는 직원 순으로 조회
SELECT * FROM EMP
ORDER BY SAL DESC;
-- 5. **EMP테이블에서 급여가 같을 경우 커미션을 내림차순 정렬 조회
SELECT * FROM EMP
ORDER BY SAL DESC, COMM DESC;
-- 6. **EMP테이블에서 사원번호, 사원명,직급, 입사일 조회 (단, 입사일을 오름차순 정렬 처리)
SELECT EMPNO, ENAME, JOB, HIREDATE 
FROM EMP
ORDER BY HIREDATE;
-- 7. **EMP테이블에서 사원번호, 사원명 조회 (사원번호 기준 내림차순 정렬)
SELECT EMPNO, ENAME
FROM EMP
ORDER BY EMPNO DESC;
-- 8. **EMP테이블에서 사번, 입사일, 사원명, 급여 조회
-- (부서번호가 빠른 순으로, 같은 부서번호일 때는 최근 입사일 순으로 처리)
SELECT EMPNO, HIREDATE, ENAME, SAL
FROM EMP
ORDER BY DEPTNO, HIREDATE DESC;


-- 함수
-- 오라클에서 함수는 내장 함수 사용자 정의 함수로 나누어 짐
-- 내장 함수는 단일행 함수와 다중행(집계)함수로 나누어 짐
-- DUA L테이블 : 오라클의 SYS 계정에서 제공하는 테이블로 함수나
-- 계산식에서 테이블 참조없이 실행해 보기 위해 제공 됨(DUMMY 테이블)

-- ABS : 절대값을 구하는 함수
SELECT -10, abs(-10) from DUAL;

-- ROUND : 반올림한 결과를 반환하는 함수 : ROUND(숫자, 반올림 위치), 위치는 음수값도 줄 수 있다.
SELECT ROUND(1234.5678) AS ROUND,
    ROUND(1234.5678, 1) AS ROUND_1,
    ROUND(1234.5678, 2) AS ROUND_2,
    ROUND(1234.5678, -1) AS ROUND_MINUS1,
    ROUND(1234.5678, -2) AS ROUND_MINUS2
FROM DUAL;


-- TRUNC : 버림한 결과를 반환하는 함수
SELECT TRUNC(1234.5678) AS TRUNC,
    TRUNC(1234.5678, 0) AS TRUNC_0,
    TRUNC(1234.5678, 1) AS TRUNC_1,
    TRUNC(1234.5678, 2) AS TRUNC_2,
    TRUNC(1234.5678, -1) AS TRUNC_MINUS1,
    TRUNC(1234.5678, -2) AS TRUNC_MINUS2
FROM DUAL;

-- MOD : 나누기한 나머지를 출력하는 함수
SELECT MOD(21, 5) FROM DUAL;

-- CEIL : 소수점 이하를 무조건 올림
SELECT CEIL(12.0000001) FROM DUAL;

-- PLOOR : 소수점 이하를 무조건 내림
SELECT FLOOR(12.999999) FROM DUAL;

-- POWER : 정수 A를 정수B만큼 제곱하는 함수(3, 4)
SELECT POWER(3, 4) FROM DUAL;