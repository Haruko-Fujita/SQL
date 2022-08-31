SELECT
  a.*,
  b.DATE AS 入社日 
  CASE WHEN c.MANAGER_ID IS NOT NULL THEN 1
    ELSE 0 END
    AS MANAGER_FLAG
FROM
  TABLE_A a
  INNER JOIN TABLE_B b ON a.ID = b.ID
WHERE
  a.NUMBER = 0
  AND '2017-04-01' BETWEEN c.START_DATE
  AND c.FINISH_DATE
GROUP BY
  a.SEX
HAVING
  ROUND( AVG(TIMESTAMPDIFF(YEAR, a.BIRTH_DATE, '2017-04-01') ), 1) < 37
ORDER BY
  TIMESTAMPDIFF(MONTH, b.DATE, '2022-8-28'),
  a.ID


SELECT
  表示するデータ
FROM
  元のテーブル テーブルの記号
  INNER JOIN 結合するtable テーブルの記号 
  ON 元のtableのカラム = 結合するtableのカラム
wHERE
  取得するデータの条件
GROUP BY
  データを集約する（1行にまとめる）
  集約データ以外は、SELECTでMAX/MIN/SUM/COUNT/AVG/SUMなどを使用しなければならない
HAVING 条件 グループ化したデータで条件に合うものを取得
ORDER BY
  並べ替えの条件1,

  条件2 最後にコロン;
* 全て 
b.DATE AS 入社日 カラム名を入社日として表示する

CONCAT (a, b) -> ab くっつけて表示される

SUM  = +
DIV = /  DIV は切り捨て整数表示 、 / は小数点以下が出る 
MOD = % 
TIMESTAMPDIFF(MONTH, b.DATE, '2022-8-28') 差を取得 
COUNT(a.EMPLOYEE_ID) データ数 
MIN(a.BIRTH_DATE) 最大値 
MAX(a.BIRTH_DATE) 最小値 

ROUND( AVG(TIMESTAMPDIFF(YEAR, a.BIRTH_DATE, '2017-04-01') ), 1) 
  平均を小数点以下第1位までに四捨五入

'2017-04-01' BETWEEN c.START_DATE AND c.FINISH_DATE 
  間にデータがある
  書き換え 
'2017-04-01' >= c.START_DATE AND c.FINISH_DATE >= '2017-04-01' 

CASE WHEN c.MANAGER_ID IS NOT NULL 
  THEN 1
  ELSE 0 END 
  c.MANAGER_IDがnot null の時は1 、 他は0にする 
  

