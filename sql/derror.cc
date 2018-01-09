/* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; version 2 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software Foundation,
51 Franklin Street, Suite 500, Boston, MA 02110-1335 USA */


/**
@file

@brief
Read language depeneded messagefile
*/

#include "sql_priv.h"
#include "unireg.h"
#include "derror.h"
#include "mysys_err.h"
#include "mysqld.h"                             // lc_messages_dir
#include "derror.h"                             // read_texts
#include "sql_class.h"                          // THD

static void init_myfunc_errs(void);

const char **server_errmsgs;

#define SERVER_SETMSG(nr, msg) server_errmsgs[(nr) - ER_ERROR_FIRST]= (msg)

#define SERVER_ERR_ERRORS            (ER_ERROR_LAST - ER_ERROR_FIRST + 1)

C_MODE_START
static const char **get_server_errmsgs()
{
	return server_errmsgs;
}
C_MODE_END

	/**
	Read messages from errorfile.

	This function can be called multiple times to reload the messages.
	If it fails to load the messages, it will fail softly by initializing
	the errmesg pointer to an array of empty strings or by keeping the
	old array if it exists.

	@retval
	FALSE       OK
	@retval
	TRUE        Error
	*/


bool init_errmessage(void)
{
	DBUG_ENTER("init_errmessage");


	if (! (server_errmsgs= (const char**) my_malloc(SERVER_ERR_ERRORS * sizeof(char*), MYF(MY_WME | MY_ZEROFILL))))
		return 1;

  SERVER_SETMSG(ER_ERROR_FIRST, "HelloWorld");
  SERVER_SETMSG(ER_NOT_SUPPORTED_YET, "不支持的语句类型。");
  SERVER_SETMSG(ER_SQL_NO_SOURCE, "SQL缺少源信息。");
  SERVER_SETMSG(ER_SQL_NO_OP_TYPE, "SQL缺少操作类型。");
  SERVER_SETMSG(ER_SQL_INVALID_OP_TYPE, "无效的SQL操作类型。");
  SERVER_SETMSG(ER_PARSE_ERROR, "%s 在 \'%-.80s\' 附件，行号 %d");
  SERVER_SETMSG(ER_SYNTAX_ERROR, "SQL有语法错误，");
  SERVER_SETMSG(ER_REMOTE_EXE_ERROR, "在源服务器执行失败。");
  SERVER_SETMSG(ER_SHUTDOWN_COMPLETE, "关闭完成。");
  SERVER_SETMSG(ER_WITH_INSERT_FIELD, "INSERT语句需要提供字段列表。");
  SERVER_SETMSG(ER_WITH_INSERT_VALUES, "INSERT语句需要提供值列表。");
  SERVER_SETMSG(ER_WRONG_VALUE_COUNT_ON_ROW, "在第 %ld 行字段列表和值列表数量不匹配。");
  SERVER_SETMSG(ER_BAD_FIELD_ERROR, "在 \'%-.192s\' 中发现未知的列 \'%-.192s\'。");
  SERVER_SETMSG(ER_FIELD_SPECIFIED_TWICE, "表 \'%-.192s\' 中的列 \'%-.192s\' 指定了两次。");
  SERVER_SETMSG(ER_BAD_NULL_ERROR, "在 %d 行的列 \'%-.192s\' 不允许为NULL。");
  SERVER_SETMSG(ER_NO_WHERE_CONDITION, "SELECT语句需要提供WHERE从句以限制返回记录条数。");
  SERVER_SETMSG(ER_NORMAL_SHUTDOWN, "%s: 正常关闭\n");
  SERVER_SETMSG(ER_FORCING_CLOSE, "%s: 正在强行关闭线程 %ld  用户： \'%-.48s\'\n");
  SERVER_SETMSG(ER_CON_COUNT_ERROR, "太多连接");
  SERVER_SETMSG(ER_INVALID_COMMAND, "无效的命令。");
  SERVER_SETMSG(ER_SQL_INVALID_SOURCE, "无效的源信息。");
  SERVER_SETMSG(ER_WRONG_DB_NAME, "无效的数据库名 \'%-.100s\'.");
  SERVER_SETMSG(EXIT_UNKNOWN_VARIABLE, "存在一个不正确的变量。");
  SERVER_SETMSG(EXIT_UNKNOWN_OPTION, "存在一个不正确的选项。");
  SERVER_SETMSG(ER_NO_DB_ERROR, "没有选择一个数据库。");
  SERVER_SETMSG(ER_WITH_LIMIT_CONDITION, "UPDATE/DELETE语句不允许使用LIMIT从句。");
  SERVER_SETMSG(ER_WITH_ORDERBY_CONDITION, "UPDATE/DELETE语句不允许使用ORDER BY从句。");
  SERVER_SETMSG(ER_SELECT_ONLY_STAR, "SELECT *禁止使用，请显示指定要选取的字段列表。");
  SERVER_SETMSG(ER_ORDERY_BY_RAND, "SELECT语句禁止使用随机排序，随机排序可能引起表扫。");
  SERVER_SETMSG(ER_ID_IS_UPER, "标识符不允许使用大写。");
  SERVER_SETMSG(ER_UNKNOWN_COLLATION, "未知的排序方式：\'%-.64s\'.");
  SERVER_SETMSG(ER_INVALID_DATA_TYPE, "字段\'%-.64s\'上指定了不支持的数据类型。");
  SERVER_SETMSG(ER_NOT_ALLOWED_NULLABLE, "表 \'%-.64s\' 中的列 \'%-.64s\' 不允许为空。");
  SERVER_SETMSG(ER_DUP_FIELDNAME, "列名重复 \'%-.192s\'。");
  SERVER_SETMSG(ER_WRONG_COLUMN_NAME, "列名 \'%-.100s\' 不正确。");
  SERVER_SETMSG(ER_WRONG_AUTO_KEY, "错误的表定义，一个表仅允许一个自增字段，且需要设置成主键。");
  SERVER_SETMSG(ER_TABLE_CANT_HANDLE_AUTO_INCREMENT, "当前表类型不支持 AUTO_INCREMENT 类型字段。");
  SERVER_SETMSG(ER_FOREIGN_KEY, "表 \'%-.64s\' 不支持外键。");
  SERVER_SETMSG(ER_TOO_MANY_KEY_PARTS, "表 \'%-.64s\' 中定义的主键 \'%-.64s\' 使用了过多的列，请限制在 %d 个列。");
  SERVER_SETMSG(ER_TOO_LONG_IDENT, "标识符 \'%-.100s\' 太长。");
  SERVER_SETMSG(ER_UDPATE_TOO_MUCH_ROWS, "更新语句扫描行数超过 %d（这个未必是实际更新行数，也可能是没有相关索引造成的表扫描）。");
  SERVER_SETMSG(ER_WRONG_NAME_FOR_INDEX, "表 \'%-.64s\' 上定义的索引 \'%-.100s\' 名称不正确。");
  SERVER_SETMSG(ER_TOO_MANY_KEYS, "表 \'%-.64s\' 中创建了过多的索引，建议最多创建 %d 个索引。");
  SERVER_SETMSG(ER_NOT_SUPPORTED_KEY_TYPE, "不支持的类新：\'%-.64s\'.");

  SERVER_SETMSG(ER_WRONG_SUB_KEY, "Incorrect prefix key; the used key part isn\'t a string, the used length is longer than the key part, or the storage engine doesn\'t support unique prefix keys");

  SERVER_SETMSG(ER_WRONG_KEY_COLUMN, "当前使用的存储引擎不能索引字段 \'%-.192s\'。");
  SERVER_SETMSG(ER_TOO_LONG_KEY, "索引 \'%-.64s\' 索引字段太长，最多只能索引 %d 个字节数据。");
  SERVER_SETMSG(ER_MULTIPLE_PRI_KEY, "主键定义重复。");
  SERVER_SETMSG(ER_DUP_KEYNAME, "字段名称 \'%-.192s\' 定义重复。");
  SERVER_SETMSG(ER_TOO_LONG_INDEX_COMMENT, "索引 \'%-.64s\' 的注释信息太长，最多允许字符数 %lu。");
  SERVER_SETMSG(ER_DUP_INDEX, "在表 \'%-.64s.%-.64s\' 上定义了重复的索引 \'%-.64s\'。");
  SERVER_SETMSG(ER_TEMP_TABLE_TMP_PREFIX, "需要为临时表指定 \'tmp\' 前缀。");
  SERVER_SETMSG(ER_TABLE_MUST_INNODB, "需要为表 \'%-.64s\' 显示指定存储引擎InnoDB。");
  SERVER_SETMSG(ER_TABLE_CHARSET_MUST_UTF8, "表 \'%-.64s\' 的字符集需要设置为 \'%-.192s\' 中的一种。");
  SERVER_SETMSG(ER_NAMES_MUST_UTF8, "允许使用的字符集是 \'%-.192s\'。");
  SERVER_SETMSG(ER_TABLE_MUST_HAVE_COMMENT, "需要为表 \'%-.192s\' 提供说明信息。");
  SERVER_SETMSG(ER_COLUMN_HAVE_NO_COMMENT, "需要为表 \'%-.64s\' 中的字段 \'%-.64s\' 提供说明信息。");
  SERVER_SETMSG(ER_TABLE_MUST_HAVE_PK, "表 \'%-.64s\' 上没有定义主键。");
  SERVER_SETMSG(ER_PARTITION_NOT_ALLOWED, "系统不允许创建分区表。");
  SERVER_SETMSG(ER_USE_ENUM, "字段使用了枚举类型。");
  SERVER_SETMSG(ER_USE_TEXT_OR_BLOB, "字段 \'%-.192s\' 使用了TEXT/BLOB数据类型。");
  SERVER_SETMSG(ER_COLUMN_EXISTED, "字段 \'%-.64s\' 已经存在。");
  SERVER_SETMSG(ER_COLUMN_NOT_EXISTED, "字段 \'%-.64s\' 不存在。");
  SERVER_SETMSG(ER_CANT_DROP_FIELD_OR_KEY, "无法删除 \'%-.192s\'，检查字段或索引是否存在。");
  SERVER_SETMSG(ER_INVALID_DEFAULT, "字段 \'%-.192s\' 上的默认值无效。");
  SERVER_SETMSG(ER_USERNAME, "用户名");
  SERVER_SETMSG(ER_HOSTNAME, "主机名");
  SERVER_SETMSG(ER_NOT_VALID_PASSWORD, "您的密码不能满足当前的安全策略。");
  SERVER_SETMSG(ER_WRONG_STRING_LENGTH, "String \'%-.70s\' is too long for %s (should be no longer than %d).");
  SERVER_SETMSG(ER_BLOB_USED_AS_KEY, "当前的表类型不支持在BLOB类型的列 \'%-.192s\'上建立索引。");
  SERVER_SETMSG(ER_TOO_LONG_BAKDB_NAME, "备份库的名称 \'%-s-%d-%s\' 太长了。");
  SERVER_SETMSG(ER_INVALID_BACKUP_HOST_INFO, "无效的远端备份服务器信息。");
  SERVER_SETMSG(ER_BINLOG_CORRUPTED, "Binlog日志损坏。");
  SERVER_SETMSG(ER_NET_READ_ERROR, "读取通讯包时发生错误。");
  SERVER_SETMSG(ER_NETWORK_READ_EVENT_CHECKSUM_FAILURE, "从网络读取数据是发现复制事件的检验检查失败。");
  SERVER_SETMSG(ER_SLAVE_RELAY_LOG_WRITE_FAILURE, "写中继日志时发生错误：%s。");
  SERVER_SETMSG(ER_INCORRECT_GLOBAL_LOCAL_VAR, "变量 \'%-.192s\' 是一个 %s 变量。");
  SERVER_SETMSG(ER_START_AS_BEGIN, "Must start as begin statement.");
  SERVER_SETMSG(ER_OUTOFMEMORY, "内存溢出，需要重启服务重试（需要 %d 字节的内存）。");
  SERVER_SETMSG(ER_HAVE_BEGIN, "多次开启事务，或者上次的事务没有提交，可以尝试执行COMMIT。");
  SERVER_SETMSG(ER_NET_READ_INTERRUPTED, "读取通讯包超时");
  SERVER_SETMSG(ER_BINLOG_FORMAT_STATEMENT, "日志格式是STATMENT，备份功能不可用。");
  SERVER_SETMSG(EXIT_NO_ARGUMENT_ALLOWED, "不允许SET参数");
  SERVER_SETMSG(EXIT_ARGUMENT_REQUIRED, "需要参数。");
  SERVER_SETMSG(EXIT_AMBIGUOUS_OPTION, "模糊的参数。");

  SERVER_SETMSG(ER_ERROR_EXIST_BEFORE, "Exist error at before statement.");

  SERVER_SETMSG(ER_UNKNOWN_SYSTEM_VARIABLE, "未知的系统参数：\'%-.64s\'。");
  SERVER_SETMSG(ER_UNKNOWN_CHARACTER_SET, "未知的字符集：\'%-.64s\'。");
  SERVER_SETMSG(ER_END_WITH_COMMIT, "必须以COMMIT结束");
  SERVER_SETMSG(ER_DB_NOT_EXISTED_ERROR, "选取的数据库 \'%-.64s\' 不存在。");
  SERVER_SETMSG(ER_TABLE_EXISTS_ERROR, "表 \'%-.192s\' 已经存在。");
  SERVER_SETMSG(ER_INDEX_NAME_IDX_PREFIX, "为表 \'%-.64s\' 创建的普通索引 \'%-.192s\' 应该以 \'index_\' 为前缀，并以数字结尾。");
  SERVER_SETMSG(ER_INDEX_NAME_UNIQ_PREFIX, "为表 \'%-.64s\' 创建的唯一索引 \'%-.192s\' 应该以 \'unique_\' 为前缀，并以数字结尾。");
  SERVER_SETMSG(ER_AUTOINC_UNSIGNED, "表 \'%-.64s\'中的自增长字段需要设置为无符号类型。");
  SERVER_SETMSG(ER_VARCHAR_TO_TEXT_LEN, "字段 \'%-.192s\' 建议更改成TEXT类型。");
  SERVER_SETMSG(ER_CHAR_TO_VARCHAR_LEN, "字段 \'%-.192s\' 建议更改成VARCHAR类型。");
  SERVER_SETMSG(ER_KEY_COLUMN_DOES_NOT_EXITS, "索引的字段 \'%-.192s\' 在表中不存在。");
  SERVER_SETMSG(ER_INC_INIT_ERR, "自增长字段的种子应设置为1。");
  SERVER_SETMSG(ER_WRONG_ARGUMENTS, "参数 %s 不正确。");
  SERVER_SETMSG(ER_SET_DATA_TYPE_INT_BIGINT, "自增长字段应该使用INT或者BIGINT类型。");
  SERVER_SETMSG(ER_TIMESTAMP_DEFAULT, "TIMESTAMP字段 \'%-.64s\' 需要设定一个默认值。");
  SERVER_SETMSG(ER_CHARSET_ON_COLUMN, "不能对表 \'%-.64s\' 中的字段 \'%-.64s\' 设置字符集。");

  SERVER_SETMSG(ER_AUTO_INCR_ID_WARNING, "Auto increment column \'%-.64s\' is meaningful? it's dangerous!");

  SERVER_SETMSG(ER_ALTER_TABLE_ONCE, "多条对表 \'%-.64s\' 的修改语句建议合并成一条。");
  SERVER_SETMSG(ER_BLOB_CANT_HAVE_DEFAULT, "BLOB/TEXT 字段 \'%-.192s\' 不支持默认值。");
  SERVER_SETMSG(ER_END_WITH_SEMICOLON, "最后一条SQL应该以 \';\' 结尾。");
  SERVER_SETMSG(ER_NON_UNIQ_ERROR, "在 %-.192s 中的列 \'%-.192s\' 是模糊的。");
  SERVER_SETMSG(ER_TABLE_NOT_EXISTED_ERROR, "表 \'%-.192s\' 不存在。");
  SERVER_SETMSG(ER_UNKNOWN_TABLE, "Unknown table \'%-.192s\' in %-.32s.");
  SERVER_SETMSG(ER_INVALID_GROUP_FUNC_USE, "无效的使用分组函数。");
  SERVER_SETMSG(ER_INDEX_USE_ALTER_TABLE, "使用ALTER语句来创建索引。");
  SERVER_SETMSG(ER_WITH_DEFAULT_ADD_COLUMN, "需要为表 \'%-.192s\' 中的字段 \'%-.192s\' 设置默认值。");

  SERVER_SETMSG(ER_TRUNCATED_WRONG_VALUE, "Truncated incorrect %-.32s value: \'%-.128s\'");

  SERVER_SETMSG(ER_TEXT_NOT_NULLABLE_ERROR, "不能在表 \'%-.64s\' 中的TEXT/BLOB字段 \'%-.64s\'指定NOT NULL。");
  SERVER_SETMSG(ER_WRONG_VALUE_FOR_VAR, "变量 \'%-.64s\' 不能设定为 \'%-.200s\' 值。");
  SERVER_SETMSG(ER_TOO_MUCH_AUTO_TIMESTAMP_COLS, "不正确的表定义，一个表只能定义一个TIMESTAMP字段，并使用CURRENT_TIMESTAMP默认值和ON UPDATE从句。");
  SERVER_SETMSG(ER_INVALID_ON_UPDATE, "在列 \'%-.192s\' 上使用了不正确的ON UPDATE从句。");
  SERVER_SETMSG(ER_DDL_DML_COEXIST, "对于同一个表 \'%-.192s\' 的DDL和DML不能在同一个工单中提交，请分开两个工单。");
  SERVER_SETMSG(ER_SLAVE_CORRUPT_EVENT, "检测到复制事件损坏。");
  SERVER_SETMSG(ER_COLLATION_CHARSET_MISMATCH, "指定的排序方式 \'%s\' 对于字符集 \'%s\' 无效。");
  SERVER_SETMSG(ER_NOT_SUPPORTED_ALTER_OPTION, "不支持的ALTER OPTION语句");
  SERVER_SETMSG(ER_CONFLICTING_DECLARATIONS, "\'%s%s\' 和 \'%s%s\' 的定义冲突");
  SERVER_SETMSG(ER_IDENT_USE_KEYWORD, "标识符 \'%s\' 是MySQL的保留关键字，建议使用其他名称。");
  SERVER_SETMSG(ER_VIEW_SELECT_CLAUSE, "视图的定义包含了 \'%s\' 从句。");
  SERVER_SETMSG(ER_OSC_KILL_FAILED, "找不到OSC。");
  SERVER_SETMSG(ER_NET_PACKETS_OUT_OF_ORDER, "通讯包的顺序错误");
  SERVER_SETMSG(ER_NOT_SUPPORTED_ITEM_TYPE, "表达式类型 \'%s\' 不支持。");
  SERVER_SETMSG(ER_INVALID_IDENT, "无效的标识符 \'%s\'，请使用以下字符：[a-z|A-Z|0-9|_]。");
  SERVER_SETMSG(ER_INCEPTION_EMPTY_QUERY, "错误，查询语句为空。");
  SERVER_SETMSG(ER_PK_COLS_NOT_INT, "表 \'%s\'.\'%s\' 的主键列 \'%s\' 没有使用INT或者BIGINT。");
  SERVER_SETMSG(ER_PK_TOO_MANY_PARTS, "表 \'%s\'.\'%s\' 的主键列数过多，建议最大值：%d。");
  SERVER_SETMSG(ER_REMOVED_SPACES, "前置空格从 \'%s\' 中移除。");
  SERVER_SETMSG(ER_ERROR_LAST, "TheLastError,ByeBye");

	/* Register messages for use with my_error(). */
	if (my_error_register(get_server_errmsgs, ER_ERROR_FIRST, ER_ERROR_LAST))
	{
		my_free(server_errmsgs);
		DBUG_RETURN(TRUE);
	}

	init_myfunc_errs();			/* Init myfunc messages */
	DBUG_RETURN(FALSE);
}

/**
Initiates error-messages used by my_func-library.
*/

static void init_myfunc_errs()
{
	init_glob_errs();			/* Initiate english errors */
	if (!(specialflag & SPECIAL_ENGLISH))
	{
		EE(EE_FILENOTFOUND)   = ER(ER_FILE_NOT_FOUND);
		EE(EE_CANTCREATEFILE) = ER(ER_CANT_CREATE_FILE);
		EE(EE_READ)           = ER(ER_ERROR_ON_READ);
		EE(EE_WRITE)          = ER(ER_ERROR_ON_WRITE);
		EE(EE_BADCLOSE)       = ER(ER_ERROR_ON_CLOSE);
		EE(EE_OUTOFMEMORY)    = ER(ER_OUTOFMEMORY);
		EE(EE_DELETE)         = ER(ER_CANT_DELETE_FILE);
		EE(EE_LINK)           = ER(ER_ERROR_ON_RENAME);
		EE(EE_EOFERR)         = ER(ER_UNEXPECTED_EOF);
		EE(EE_CANTLOCK)       = ER(ER_CANT_LOCK);
		EE(EE_DIR)            = ER(ER_CANT_READ_DIR);
		EE(EE_STAT)           = ER(ER_CANT_GET_STAT);
		EE(EE_GETWD)          = ER(ER_CANT_GET_WD);
		EE(EE_SETWD)          = ER(ER_CANT_SET_WD);
		EE(EE_DISK_FULL)      = ER(ER_DISK_FULL);
	}
}
