package Win32::WinError;

require Exporter;
require DynaLoader;

$VERSION = '0.03';

@ISA = qw(Exporter DynaLoader);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT = qw(
	GetLastError
	CACHE_E_FIRST
	CACHE_E_LAST
	CACHE_E_NOCACHE_UPDATED
	CACHE_S_FIRST
	CACHE_S_FORMATETC_NOTSUPPORTED
	CACHE_S_LAST
	CACHE_S_SAMECACHE
	CACHE_S_SOMECACHES_NOTUPDATED
	CLASSFACTORY_E_FIRST
	CLASSFACTORY_E_LAST
	CLASSFACTORY_S_FIRST
	CLASSFACTORY_S_LAST
	CLASS_E_CLASSNOTAVAILABLE
	CLASS_E_NOAGGREGATION
	CLIENTSITE_E_FIRST
	CLIENTSITE_E_LAST
	CLIENTSITE_S_FIRST
	CLIENTSITE_S_LAST
	CLIPBRD_E_BAD_DATA
	CLIPBRD_E_CANT_CLOSE
	CLIPBRD_E_CANT_EMPTY
	CLIPBRD_E_CANT_OPEN
	CLIPBRD_E_CANT_SET
	CLIPBRD_E_FIRST
	CLIPBRD_E_LAST
	CLIPBRD_S_FIRST
	CLIPBRD_S_LAST
	CONVERT10_E_FIRST
	CONVERT10_E_LAST
	CONVERT10_E_OLESTREAM_BITMAP_TO_DIB
	CONVERT10_E_OLESTREAM_FMT
	CONVERT10_E_OLESTREAM_GET
	CONVERT10_E_OLESTREAM_PUT
	CONVERT10_E_STG_DIB_TO_BITMAP
	CONVERT10_E_STG_FMT
	CONVERT10_E_STG_NO_STD_STREAM
	CONVERT10_S_FIRST
	CONVERT10_S_LAST
	CONVERT10_S_NO_PRESENTATION
	CO_E_ALREADYINITIALIZED
	CO_E_APPDIDNTREG
	CO_E_APPNOTFOUND
	CO_E_APPSINGLEUSE
	CO_E_BAD_PATH
	CO_E_CANTDETERMINECLASS
	CO_E_CLASSSTRING
	CO_E_CLASS_CREATE_FAILED
	CO_E_DLLNOTFOUND
	CO_E_ERRORINAPP
	CO_E_ERRORINDLL
	CO_E_FIRST
	CO_E_IIDSTRING
	CO_E_INIT_CLASS_CACHE
	CO_E_INIT_MEMORY_ALLOCATOR
	CO_E_INIT_ONLY_SINGLE_THREADED
	CO_E_INIT_RPC_CHANNEL
	CO_E_INIT_SCM_EXEC_FAILURE
	CO_E_INIT_SCM_FILE_MAPPING_EXISTS
	CO_E_INIT_SCM_MAP_VIEW_OF_FILE
	CO_E_INIT_SCM_MUTEX_EXISTS
	CO_E_INIT_SHARED_ALLOCATOR
	CO_E_INIT_TLS
	CO_E_INIT_TLS_CHANNEL_CONTROL
	CO_E_INIT_TLS_SET_CHANNEL_CONTROL
	CO_E_INIT_UNACCEPTED_USER_ALLOCATOR
	CO_E_LAST
	CO_E_NOTINITIALIZED
	CO_E_OBJISREG
	CO_E_OBJNOTCONNECTED
	CO_E_OBJNOTREG
	CO_E_OBJSRV_RPC_FAILURE
	CO_E_RELEASED
	CO_E_SCM_ERROR
	CO_E_SCM_RPC_FAILURE
	CO_E_SERVER_EXEC_FAILURE
	CO_E_SERVER_STOPPING
	CO_E_WRONGOSFORAPP
	CO_S_FIRST
	CO_S_LAST
	DATA_E_FIRST
	DATA_E_LAST
	DATA_S_FIRST
	DATA_S_LAST
	DATA_S_SAMEFORMATETC
	DISP_E_ARRAYISLOCKED
	DISP_E_BADCALLEE
	DISP_E_BADINDEX
	DISP_E_BADPARAMCOUNT
	DISP_E_BADVARTYPE
	DISP_E_EXCEPTION
	DISP_E_MEMBERNOTFOUND
	DISP_E_NONAMEDARGS
	DISP_E_NOTACOLLECTION
	DISP_E_OVERFLOW
	DISP_E_PARAMNOTFOUND
	DISP_E_PARAMNOTOPTIONAL
	DISP_E_TYPEMISMATCH
	DISP_E_UNKNOWNINTERFACE
	DISP_E_UNKNOWNLCID
	DISP_E_UNKNOWNNAME
	DRAGDROP_E_ALREADYREGISTERED
	DRAGDROP_E_FIRST
	DRAGDROP_E_INVALIDHWND
	DRAGDROP_E_LAST
	DRAGDROP_E_NOTREGISTERED
	DRAGDROP_S_CANCEL
	DRAGDROP_S_DROP
	DRAGDROP_S_FIRST
	DRAGDROP_S_LAST
	DRAGDROP_S_USEDEFAULTCURSORS
	DV_E_CLIPFORMAT
	DV_E_DVASPECT
	DV_E_DVTARGETDEVICE
	DV_E_DVTARGETDEVICE_SIZE
	DV_E_FORMATETC
	DV_E_LINDEX
	DV_E_NOIVIEWOBJECT
	DV_E_STATDATA
	DV_E_STGMEDIUM
	DV_E_TYMED
	ENUM_E_FIRST
	ENUM_E_LAST
	ENUM_S_FIRST
	ENUM_S_LAST
	EPT_S_CANT_CREATE
	EPT_S_CANT_PERFORM_OP
	EPT_S_INVALID_ENTRY
	EPT_S_NOT_REGISTERED
	ERROR_ACCESS_DENIED
	ERROR_ACCOUNT_DISABLED
	ERROR_ACCOUNT_EXPIRED
	ERROR_ACCOUNT_LOCKED_OUT
	ERROR_ACCOUNT_RESTRICTION
	ERROR_ACTIVE_CONNECTIONS
	ERROR_ADAP_HDW_ERR
	ERROR_ADDRESS_ALREADY_ASSOCIATED
	ERROR_ADDRESS_NOT_ASSOCIATED
	ERROR_ALIAS_EXISTS
	ERROR_ALLOTTED_SPACE_EXCEEDED
	ERROR_ALREADY_ASSIGNED
	ERROR_ALREADY_EXISTS
	ERROR_ALREADY_REGISTERED
	ERROR_ALREADY_RUNNING_LKG
	ERROR_ALREADY_WAITING
	ERROR_ARENA_TRASHED
	ERROR_ARITHMETIC_OVERFLOW
	ERROR_ATOMIC_LOCKS_NOT_SUPPORTED
	ERROR_AUTODATASEG_EXCEEDS_64k
	ERROR_BADDB
	ERROR_BADKEY
	ERROR_BAD_ARGUMENTS
	ERROR_BAD_COMMAND
	ERROR_BAD_DESCRIPTOR_FORMAT
	ERROR_BAD_DEVICE
	ERROR_BAD_DEV_TYPE
	ERROR_BAD_DRIVER
	ERROR_BAD_DRIVER_LEVEL
	ERROR_BAD_ENVIRONMENT
	ERROR_BAD_EXE_FORMAT
	ERROR_BAD_FORMAT
	ERROR_BAD_IMPERSONATION_LEVEL
	ERROR_BAD_INHERITANCE_ACL
	ERROR_BAD_LENGTH
	ERROR_BAD_LOGON_SESSION_STATE
	ERROR_BAD_NETPATH
	ERROR_BAD_NET_NAME
	ERROR_BAD_NET_RESP
	ERROR_BAD_PATHNAME
	ERROR_BAD_PIPE
	ERROR_BAD_PROFILE
	ERROR_BAD_PROVIDER
	ERROR_BAD_REM_ADAP
	ERROR_BAD_THREADID_ADDR
	ERROR_BAD_TOKEN_TYPE
	ERROR_BAD_UNIT
	ERROR_BAD_USERNAME
	ERROR_BAD_VALIDATION_CLASS
	ERROR_BEGINNING_OF_MEDIA
	ERROR_BOOT_ALREADY_ACCEPTED
	ERROR_BROKEN_PIPE
	ERROR_BUFFER_OVERFLOW
	ERROR_BUSY
	ERROR_BUSY_DRIVE
	ERROR_BUS_RESET
	ERROR_CALL_NOT_IMPLEMENTED
	ERROR_CANCELLED
	ERROR_CANCEL_VIOLATION
	ERROR_CANNOT_COPY
	ERROR_CANNOT_FIND_WND_CLASS
	ERROR_CANNOT_IMPERSONATE
	ERROR_CANNOT_MAKE
	ERROR_CANNOT_OPEN_PROFILE
	ERROR_CANTOPEN
	ERROR_CANTREAD
	ERROR_CANTWRITE
	ERROR_CANT_ACCESS_DOMAIN_INFO
	ERROR_CANT_DISABLE_MANDATORY
	ERROR_CANT_OPEN_ANONYMOUS
	ERROR_CAN_NOT_COMPLETE
	ERROR_CAN_NOT_DEL_LOCAL_WINS
	ERROR_CHILD_MUST_BE_VOLATILE
	ERROR_CHILD_NOT_COMPLETE
	ERROR_CHILD_WINDOW_MENU
	ERROR_CIRCULAR_DEPENDENCY
	ERROR_CLASS_ALREADY_EXISTS
	ERROR_CLASS_DOES_NOT_EXIST
	ERROR_CLASS_HAS_WINDOWS
	ERROR_CLIPBOARD_NOT_OPEN
	ERROR_CLIPPING_NOT_SUPPORTED
	ERROR_CONNECTION_ABORTED
	ERROR_CONNECTION_ACTIVE
	ERROR_CONNECTION_COUNT_LIMIT
	ERROR_CONNECTION_INVALID
	ERROR_CONNECTION_REFUSED
	ERROR_CONNECTION_UNAVAIL
	ERROR_CONTROL_ID_NOT_FOUND
	ERROR_COUNTER_TIMEOUT
	ERROR_CRC
	ERROR_CURRENT_DIRECTORY
	ERROR_DATABASE_DOES_NOT_EXIST
	ERROR_DC_NOT_FOUND
	ERROR_DEPENDENT_SERVICES_RUNNING
	ERROR_DESTROY_OBJECT_OF_OTHER_THREAD
	ERROR_DEVICE_ALREADY_REMEMBERED
	ERROR_DEVICE_IN_USE
	ERROR_DEVICE_NOT_PARTITIONED
	ERROR_DEV_NOT_EXIST
	ERROR_DIRECTORY
	ERROR_DIRECT_ACCESS_HANDLE
	ERROR_DIR_NOT_EMPTY
	ERROR_DIR_NOT_ROOT
	ERROR_DISCARDED
	ERROR_DISK_CHANGE
	ERROR_DISK_CORRUPT
	ERROR_DISK_FULL
	ERROR_DISK_OPERATION_FAILED
	ERROR_DISK_RECALIBRATE_FAILED
	ERROR_DISK_RESET_FAILED
	ERROR_DLL_INIT_FAILED
	ERROR_DOMAIN_CONTROLLER_NOT_FOUND
	ERROR_DOMAIN_EXISTS
	ERROR_DOMAIN_LIMIT_EXCEEDED
	ERROR_DOMAIN_TRUST_INCONSISTENT
	ERROR_DRIVE_LOCKED
	ERROR_DUPLICATE_SERVICE_NAME
	ERROR_DUP_DOMAINNAME
	ERROR_DUP_NAME
	ERROR_DYNLINK_FROM_INVALID_RING
	ERROR_EAS_DIDNT_FIT
	ERROR_EAS_NOT_SUPPORTED
	ERROR_EA_ACCESS_DENIED
	ERROR_EA_FILE_CORRUPT
	ERROR_EA_LIST_INCONSISTENT
	ERROR_EA_TABLE_FULL
	ERROR_END_OF_MEDIA
	ERROR_ENVVAR_NOT_FOUND
	ERROR_EOM_OVERFLOW
	ERROR_EVENTLOG_CANT_START
	ERROR_EVENTLOG_FILE_CHANGED
	ERROR_EVENTLOG_FILE_CORRUPT
	ERROR_EXCEPTION_IN_SERVICE
	ERROR_EXCL_SEM_ALREADY_OWNED
	ERROR_EXE_MARKED_INVALID
	ERROR_EXTENDED_ERROR
	ERROR_FAILED_SERVICE_CONTROLLER_CONNECT
	ERROR_FAIL_I24
	ERROR_FILEMARK_DETECTED
	ERROR_FILENAME_EXCED_RANGE
	ERROR_FILE_CORRUPT
	ERROR_FILE_EXISTS
	ERROR_FILE_INVALID
	ERROR_FILE_NOT_FOUND
	ERROR_FLOPPY_BAD_REGISTERS
	ERROR_FLOPPY_ID_MARK_NOT_FOUND
	ERROR_FLOPPY_UNKNOWN_ERROR
	ERROR_FLOPPY_WRONG_CYLINDER
	ERROR_FULLSCREEN_MODE
	ERROR_FULL_BACKUP
	ERROR_GENERIC_NOT_MAPPED
	ERROR_GEN_FAILURE
	ERROR_GLOBAL_ONLY_HOOK
	ERROR_GRACEFUL_DISCONNECT
	ERROR_GROUP_EXISTS
	ERROR_HANDLE_DISK_FULL
	ERROR_HANDLE_EOF
	ERROR_HOOK_NEEDS_HMOD
	ERROR_HOOK_NOT_INSTALLED
	ERROR_HOST_UNREACHABLE
	ERROR_HOTKEY_ALREADY_REGISTERED
	ERROR_HOTKEY_NOT_REGISTERED
	ERROR_HWNDS_HAVE_DIFF_PARENT
	ERROR_ILL_FORMED_PASSWORD
	ERROR_INCORRECT_ADDRESS
	ERROR_INC_BACKUP
	ERROR_INFLOOP_IN_RELOC_CHAIN
	ERROR_INSUFFICIENT_BUFFER
	ERROR_INTERNAL_DB_CORRUPTION
	ERROR_INTERNAL_DB_ERROR
	ERROR_INTERNAL_ERROR
	ERROR_INVALID_ACCEL_HANDLE
	ERROR_INVALID_ACCESS
	ERROR_INVALID_ACCOUNT_NAME
	ERROR_INVALID_ACL
	ERROR_INVALID_ADDRESS
	ERROR_INVALID_AT_INTERRUPT_TIME
	ERROR_INVALID_BLOCK
	ERROR_INVALID_BLOCK_LENGTH
	ERROR_INVALID_CATEGORY
	ERROR_INVALID_COMBOBOX_MESSAGE
	ERROR_INVALID_COMPUTERNAME
	ERROR_INVALID_CURSOR_HANDLE
	ERROR_INVALID_DATA
	ERROR_INVALID_DATATYPE
	ERROR_INVALID_DOMAINNAME
	ERROR_INVALID_DOMAIN_ROLE
	ERROR_INVALID_DOMAIN_STATE
	ERROR_INVALID_DRIVE
	ERROR_INVALID_DWP_HANDLE
	ERROR_INVALID_EA_HANDLE
	ERROR_INVALID_EA_NAME
	ERROR_INVALID_EDIT_HEIGHT
	ERROR_INVALID_ENVIRONMENT
	ERROR_INVALID_EVENTNAME
	ERROR_INVALID_EVENT_COUNT
	ERROR_INVALID_EXE_SIGNATURE
	ERROR_INVALID_FILTER_PROC
	ERROR_INVALID_FLAGS
	ERROR_INVALID_FLAG_NUMBER
	ERROR_INVALID_FORM_NAME
	ERROR_INVALID_FORM_SIZE
	ERROR_INVALID_FUNCTION
	ERROR_INVALID_GROUPNAME
	ERROR_INVALID_GROUP_ATTRIBUTES
	ERROR_INVALID_GW_COMMAND
	ERROR_INVALID_HANDLE
	ERROR_INVALID_HOOK_FILTER
	ERROR_INVALID_HOOK_HANDLE
	ERROR_INVALID_ICON_HANDLE
	ERROR_INVALID_ID_AUTHORITY
	ERROR_INVALID_INDEX
	ERROR_INVALID_LB_MESSAGE
	ERROR_INVALID_LEVEL
	ERROR_INVALID_LIST_FORMAT
	ERROR_INVALID_LOGON_HOURS
	ERROR_INVALID_LOGON_TYPE
	ERROR_INVALID_MEMBER
	ERROR_INVALID_MENU_HANDLE
	ERROR_INVALID_MESSAGE
	ERROR_INVALID_MESSAGEDEST
	ERROR_INVALID_MESSAGENAME
	ERROR_INVALID_MINALLOCSIZE
	ERROR_INVALID_MODULETYPE
	ERROR_INVALID_MSGBOX_STYLE
	ERROR_INVALID_NAME
	ERROR_INVALID_NETNAME
	ERROR_INVALID_ORDINAL
	ERROR_INVALID_OWNER
	ERROR_INVALID_PARAMETER
	ERROR_INVALID_PASSWORD
	ERROR_INVALID_PASSWORDNAME
	ERROR_INVALID_PIXEL_FORMAT
	ERROR_INVALID_PRIMARY_GROUP
	ERROR_INVALID_PRINTER_COMMAND
	ERROR_INVALID_PRINTER_NAME
	ERROR_INVALID_PRINTER_STATE
	ERROR_INVALID_PRIORITY
	ERROR_INVALID_SCROLLBAR_RANGE
	ERROR_INVALID_SECURITY_DESCR
	ERROR_INVALID_SEGDPL
	ERROR_INVALID_SEGMENT_NUMBER
	ERROR_INVALID_SEPARATOR_FILE
	ERROR_INVALID_SERVER_STATE
	ERROR_INVALID_SERVICENAME
	ERROR_INVALID_SERVICE_ACCOUNT
	ERROR_INVALID_SERVICE_CONTROL
	ERROR_INVALID_SERVICE_LOCK
	ERROR_INVALID_SHARENAME
	ERROR_INVALID_SHOWWIN_COMMAND
	ERROR_INVALID_SID
	ERROR_INVALID_SIGNAL_NUMBER
	ERROR_INVALID_SPI_VALUE
	ERROR_INVALID_STACKSEG
	ERROR_INVALID_STARTING_CODESEG
	ERROR_INVALID_SUB_AUTHORITY
	ERROR_INVALID_TARGET_HANDLE
	ERROR_INVALID_THREAD_ID
	ERROR_INVALID_TIME
	ERROR_INVALID_USER_BUFFER
	ERROR_INVALID_VERIFY_SWITCH
	ERROR_INVALID_WINDOW_HANDLE
	ERROR_INVALID_WINDOW_STYLE
	ERROR_INVALID_WORKSTATION
	ERROR_IOPL_NOT_ENABLED
	ERROR_IO_DEVICE
	ERROR_IO_INCOMPLETE
	ERROR_IO_PENDING
	ERROR_IRQ_BUSY
	ERROR_IS_JOINED
	ERROR_IS_JOIN_PATH
	ERROR_IS_JOIN_TARGET
	ERROR_IS_SUBSTED
	ERROR_IS_SUBST_PATH
	ERROR_IS_SUBST_TARGET
	ERROR_ITERATED_DATA_EXCEEDS_64k
	ERROR_JOIN_TO_JOIN
	ERROR_JOIN_TO_SUBST
	ERROR_JOURNAL_HOOK_SET
	ERROR_KEY_DELETED
	ERROR_KEY_HAS_CHILDREN
	ERROR_LABEL_TOO_LONG
	ERROR_LAST_ADMIN
	ERROR_LB_WITHOUT_TABSTOPS
	ERROR_LISTBOX_ID_NOT_FOUND
	ERROR_LM_CROSS_ENCRYPTION_REQUIRED
	ERROR_LOCAL_USER_SESSION_KEY
	ERROR_LOCKED
	ERROR_LOCK_FAILED
	ERROR_LOCK_VIOLATION
	ERROR_LOGIN_TIME_RESTRICTION
	ERROR_LOGIN_WKSTA_RESTRICTION
	ERROR_LOGON_FAILURE
	ERROR_LOGON_NOT_GRANTED
	ERROR_LOGON_SESSION_COLLISION
	ERROR_LOGON_SESSION_EXISTS
	ERROR_LOGON_TYPE_NOT_GRANTED
	ERROR_LOG_FILE_FULL
	ERROR_LUIDS_EXHAUSTED
	ERROR_MAPPED_ALIGNMENT
	ERROR_MAX_THRDS_REACHED
	ERROR_MEDIA_CHANGED
	ERROR_MEMBERS_PRIMARY_GROUP
	ERROR_MEMBER_IN_ALIAS
	ERROR_MEMBER_IN_GROUP
	ERROR_MEMBER_NOT_IN_ALIAS
	ERROR_MEMBER_NOT_IN_GROUP
	ERROR_METAFILE_NOT_SUPPORTED
	ERROR_META_EXPANSION_TOO_LONG
	ERROR_MOD_NOT_FOUND
	ERROR_MORE_DATA
	ERROR_MORE_WRITES
	ERROR_MR_MID_NOT_FOUND
	ERROR_NEGATIVE_SEEK
	ERROR_NESTING_NOT_ALLOWED
	ERROR_NETLOGON_NOT_STARTED
	ERROR_NETNAME_DELETED
	ERROR_NETWORK_ACCESS_DENIED
	ERROR_NETWORK_BUSY
	ERROR_NETWORK_UNREACHABLE
	ERROR_NET_WRITE_FAULT
	ERROR_NOACCESS
	ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT
	ERROR_NOLOGON_SERVER_TRUST_ACCOUNT
	ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT
	ERROR_NONE_MAPPED
	ERROR_NON_MDICHILD_WINDOW
	ERROR_NOTIFY_ENUM_DIR
	ERROR_NOT_ALL_ASSIGNED
	ERROR_NOT_CHILD_WINDOW
	ERROR_NOT_CONNECTED
	ERROR_NOT_CONTAINER
	ERROR_NOT_DOS_DISK
	ERROR_NOT_ENOUGH_MEMORY
	ERROR_NOT_ENOUGH_QUOTA
	ERROR_NOT_ENOUGH_SERVER_MEMORY
	ERROR_NOT_JOINED
	ERROR_NOT_LOCKED
	ERROR_NOT_LOGON_PROCESS
	ERROR_NOT_OWNER
	ERROR_NOT_READY
	ERROR_NOT_REGISTRY_FILE
	ERROR_NOT_SAME_DEVICE
	ERROR_NOT_SUBSTED
	ERROR_NOT_SUPPORTED
	ERROR_NO_BROWSER_SERVERS_FOUND
	ERROR_NO_DATA
	ERROR_NO_DATA_DETECTED
	ERROR_NO_IMPERSONATION_TOKEN
	ERROR_NO_INHERITANCE
	ERROR_NO_LOGON_SERVERS
	ERROR_NO_LOG_SPACE
	ERROR_NO_MEDIA_IN_DRIVE
	ERROR_NO_MORE_FILES
	ERROR_NO_MORE_ITEMS
	ERROR_NO_MORE_SEARCH_HANDLES
	ERROR_NO_NETWORK
	ERROR_NO_NET_OR_BAD_PATH
	ERROR_NO_PROC_SLOTS
	ERROR_NO_QUOTAS_FOR_ACCOUNT
	ERROR_NO_SCROLLBARS
	ERROR_NO_SECURITY_ON_OBJECT
	ERROR_NO_SHUTDOWN_IN_PROGRESS
	ERROR_NO_SIGNAL_SENT
	ERROR_NO_SPOOL_SPACE
	ERROR_NO_SUCH_ALIAS
	ERROR_NO_SUCH_DOMAIN
	ERROR_NO_SUCH_GROUP
	ERROR_NO_SUCH_LOGON_SESSION
	ERROR_NO_SUCH_MEMBER
	ERROR_NO_SUCH_PACKAGE
	ERROR_NO_SUCH_PRIVILEGE
	ERROR_NO_SUCH_USER
	ERROR_NO_SYSTEM_MENU
	ERROR_NO_TOKEN
	ERROR_NO_TRUST_LSA_SECRET
	ERROR_NO_TRUST_SAM_ACCOUNT
	ERROR_NO_UNICODE_TRANSLATION
	ERROR_NO_USER_SESSION_KEY
	ERROR_NO_VOLUME_LABEL
	ERROR_NO_WILDCARD_CHARACTERS
	ERROR_NT_CROSS_ENCRYPTION_REQUIRED
	ERROR_NULL_LM_PASSWORD
	ERROR_OPEN_FAILED
	ERROR_OPEN_FILES
	ERROR_OPERATION_ABORTED
	ERROR_OUTOFMEMORY
	ERROR_OUT_OF_PAPER
	ERROR_OUT_OF_STRUCTURES
	ERROR_PARTIAL_COPY
	ERROR_PARTITION_FAILURE
	ERROR_PASSWORD_EXPIRED
	ERROR_PASSWORD_MUST_CHANGE
	ERROR_PASSWORD_RESTRICTION
	ERROR_PATH_BUSY
	ERROR_PATH_NOT_FOUND
	ERROR_PIPE_BUSY
	ERROR_PIPE_CONNECTED
	ERROR_PIPE_LISTENING
	ERROR_PIPE_NOT_CONNECTED
	ERROR_POPUP_ALREADY_ACTIVE
	ERROR_PORT_UNREACHABLE
	ERROR_POSSIBLE_DEADLOCK
	ERROR_PRINTER_ALREADY_EXISTS
	ERROR_PRINTER_DELETED
	ERROR_PRINTER_DRIVER_ALREADY_INSTALLED
	ERROR_PRINTER_DRIVER_IN_USE
	ERROR_PRINTQ_FULL
	ERROR_PRINT_CANCELLED
	ERROR_PRINT_MONITOR_ALREADY_INSTALLED
	ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED
	ERROR_PRIVATE_DIALOG_INDEX
	ERROR_PRIVILEGE_NOT_HELD
	ERROR_PROCESS_ABORTED
	ERROR_PROC_NOT_FOUND
	ERROR_PROTOCOL_UNREACHABLE
	ERROR_READ_FAULT
	ERROR_REC_NON_EXISTENT
	ERROR_REDIRECTOR_HAS_OPEN_HANDLES
	ERROR_REDIR_PAUSED
	ERROR_REGISTRY_CORRUPT
	ERROR_REGISTRY_IO_FAILED
	ERROR_REGISTRY_RECOVERED
	ERROR_RELOC_CHAIN_XEEDS_SEGLIM
	ERROR_REMOTE_SESSION_LIMIT_EXCEEDED
	ERROR_REM_NOT_LIST
	ERROR_REQUEST_ABORTED
	ERROR_REQ_NOT_ACCEP
	ERROR_RESOURCE_DATA_NOT_FOUND
	ERROR_RESOURCE_LANG_NOT_FOUND
	ERROR_RESOURCE_NAME_NOT_FOUND
	ERROR_RESOURCE_TYPE_NOT_FOUND
	ERROR_RETRY
	ERROR_REVISION_MISMATCH
	ERROR_RING2SEG_MUST_BE_MOVABLE
	ERROR_RING2_STACK_IN_USE
	ERROR_RPL_NOT_ALLOWED
	ERROR_RXACT_COMMIT_FAILURE
	ERROR_RXACT_INVALID_STATE
	ERROR_SAME_DRIVE
	ERROR_SCREEN_ALREADY_LOCKED
	ERROR_SECRET_TOO_LONG
	ERROR_SECTOR_NOT_FOUND
	ERROR_SEEK
	ERROR_SEEK_ON_DEVICE
	ERROR_SEM_IS_SET
	ERROR_SEM_NOT_FOUND
	ERROR_SEM_OWNER_DIED
	ERROR_SEM_TIMEOUT
	ERROR_SEM_USER_LIMIT
	ERROR_SERIAL_NO_DEVICE
	ERROR_SERVER_DISABLED
	ERROR_SERVER_HAS_OPEN_HANDLES
	ERROR_SERVER_NOT_DISABLED
	ERROR_SERVICE_ALREADY_RUNNING
	ERROR_SERVICE_CANNOT_ACCEPT_CTRL
	ERROR_SERVICE_DATABASE_LOCKED
	ERROR_SERVICE_DEPENDENCY_DELETED
	ERROR_SERVICE_DEPENDENCY_FAIL
	ERROR_SERVICE_DISABLED
	ERROR_SERVICE_DOES_NOT_EXIST
	ERROR_SERVICE_EXISTS
	ERROR_SERVICE_LOGON_FAILED
	ERROR_SERVICE_MARKED_FOR_DELETE
	ERROR_SERVICE_NEVER_STARTED
	ERROR_SERVICE_NOT_ACTIVE
	ERROR_SERVICE_NOT_FOUND
	ERROR_SERVICE_NO_THREAD
	ERROR_SERVICE_REQUEST_TIMEOUT
	ERROR_SERVICE_SPECIFIC_ERROR
	ERROR_SERVICE_START_HANG
	ERROR_SESSION_CREDENTIAL_CONFLICT
	ERROR_SETCOUNT_ON_BAD_LB
	ERROR_SETMARK_DETECTED
	ERROR_SHARING_BUFFER_EXCEEDED
	ERROR_SHARING_PAUSED
	ERROR_SHARING_VIOLATION
	ERROR_SHUTDOWN_IN_PROGRESS
	ERROR_SIGNAL_PENDING
	ERROR_SIGNAL_REFUSED
	ERROR_SOME_NOT_MAPPED
	ERROR_SPECIAL_ACCOUNT
	ERROR_SPECIAL_GROUP
	ERROR_SPECIAL_USER
	ERROR_SPL_NO_ADDJOB
	ERROR_SPL_NO_STARTDOC
	ERROR_SPOOL_FILE_NOT_FOUND
	ERROR_STACK_OVERFLOW
	ERROR_STATIC_INIT
	ERROR_SUBST_TO_JOIN
	ERROR_SUBST_TO_SUBST
	ERROR_SUCCESS
	ERROR_SWAPERROR
	ERROR_SYSTEM_TRACE
	ERROR_THREAD_1_INACTIVE
	ERROR_TLW_WITH_WSCHILD
	ERROR_TOKEN_ALREADY_IN_USE
	ERROR_TOO_MANY_CMDS
	ERROR_TOO_MANY_CONTEXT_IDS
	ERROR_TOO_MANY_LUIDS_REQUESTED
	ERROR_TOO_MANY_MODULES
	ERROR_TOO_MANY_MUXWAITERS
	ERROR_TOO_MANY_NAMES
	ERROR_TOO_MANY_OPEN_FILES
	ERROR_TOO_MANY_POSTS
	ERROR_TOO_MANY_SECRETS
	ERROR_TOO_MANY_SEMAPHORES
	ERROR_TOO_MANY_SEM_REQUESTS
	ERROR_TOO_MANY_SESS
	ERROR_TOO_MANY_SIDS
	ERROR_TOO_MANY_TCBS
	ERROR_TRANSFORM_NOT_SUPPORTED
	ERROR_TRUSTED_DOMAIN_FAILURE
	ERROR_TRUSTED_RELATIONSHIP_FAILURE
	ERROR_TRUST_FAILURE
	ERROR_UNABLE_TO_LOCK_MEDIA
	ERROR_UNABLE_TO_UNLOAD_MEDIA
	ERROR_UNEXP_NET_ERR
	ERROR_UNKNOWN_PORT
	ERROR_UNKNOWN_PRINTER_DRIVER
	ERROR_UNKNOWN_PRINTPROCESSOR
	ERROR_UNKNOWN_PRINT_MONITOR
	ERROR_UNKNOWN_REVISION
	ERROR_UNRECOGNIZED_MEDIA
	ERROR_UNRECOGNIZED_VOLUME
	ERROR_USER_EXISTS
	ERROR_USER_MAPPED_FILE
	ERROR_VC_DISCONNECTED
	ERROR_WAIT_NO_CHILDREN
	ERROR_WINDOW_NOT_COMBOBOX
	ERROR_WINDOW_NOT_DIALOG
	ERROR_WINDOW_OF_OTHER_THREAD
	ERROR_WINS_INTERNAL
	ERROR_WRITE_FAULT
	ERROR_WRITE_PROTECT
	ERROR_WRONG_DISK
	ERROR_WRONG_PASSWORD
	E_ABORT
	E_ACCESSDENIED
	E_FAIL
	E_HANDLE
	E_INVALIDARG
	E_NOINTERFACE
	E_NOTIMPL
	E_OUTOFMEMORY
	E_POINTER
	E_UNEXPECTED
	FACILITY_CONTROL
	FACILITY_DISPATCH
	FACILITY_ITF
	FACILITY_NT_BIT
	FACILITY_NULL
	FACILITY_RPC
	FACILITY_STORAGE
	FACILITY_WIN32
	FACILITY_WINDOWS
	INPLACE_E_FIRST
	INPLACE_E_LAST
	INPLACE_E_NOTOOLSPACE
	INPLACE_E_NOTUNDOABLE
	INPLACE_S_FIRST
	INPLACE_S_LAST
	INPLACE_S_TRUNCATED
	MARSHAL_E_FIRST
	MARSHAL_E_LAST
	MARSHAL_S_FIRST
	MARSHAL_S_LAST
	MEM_E_INVALID_LINK
	MEM_E_INVALID_ROOT
	MEM_E_INVALID_SIZE
	MK_E_CANTOPENFILE
	MK_E_CONNECTMANUALLY
	MK_E_ENUMERATION_FAILED
	MK_E_EXCEEDEDDEADLINE
	MK_E_FIRST
	MK_E_INTERMEDIATEINTERFACENOTSUPPORTED
	MK_E_INVALIDEXTENSION
	MK_E_LAST
	MK_E_MUSTBOTHERUSER
	MK_E_NEEDGENERIC
	MK_E_NOINVERSE
	MK_E_NOOBJECT
	MK_E_NOPREFIX
	MK_E_NOSTORAGE
	MK_E_NOTBINDABLE
	MK_E_NOTBOUND
	MK_E_NO_NORMALIZED
	MK_E_SYNTAX
	MK_E_UNAVAILABLE
	MK_S_FIRST
	MK_S_HIM
	MK_S_LAST
	MK_S_ME
	MK_S_MONIKERALREADYREGISTERED
	MK_S_REDUCED_TO_SELF
	MK_S_US
	NOERROR
	NO_ERROR
	OLEOBJ_E_FIRST
	OLEOBJ_E_INVALIDVERB
	OLEOBJ_E_LAST
	OLEOBJ_E_NOVERBS
	OLEOBJ_S_CANNOT_DOVERB_NOW
	OLEOBJ_S_FIRST
	OLEOBJ_S_INVALIDHWND
	OLEOBJ_S_INVALIDVERB
	OLEOBJ_S_LAST
	OLE_E_ADVF
	OLE_E_ADVISENOTSUPPORTED
	OLE_E_BLANK
	OLE_E_CANTCONVERT
	OLE_E_CANT_BINDTOSOURCE
	OLE_E_CANT_GETMONIKER
	OLE_E_CLASSDIFF
	OLE_E_ENUM_NOMORE
	OLE_E_FIRST
	OLE_E_INVALIDHWND
	OLE_E_INVALIDRECT
	OLE_E_LAST
	OLE_E_NOCACHE
	OLE_E_NOCONNECTION
	OLE_E_NOSTORAGE
	OLE_E_NOTRUNNING
	OLE_E_NOT_INPLACEACTIVE
	OLE_E_OLEVERB
	OLE_E_PROMPTSAVECANCELLED
	OLE_E_STATIC
	OLE_E_WRONGCOMPOBJ
	OLE_S_FIRST
	OLE_S_LAST
	OLE_S_MAC_CLIPFORMAT
	OLE_S_STATIC
	OLE_S_USEREG
	REGDB_E_CLASSNOTREG
	REGDB_E_FIRST
	REGDB_E_IIDNOTREG
	REGDB_E_INVALIDVALUE
	REGDB_E_KEYMISSING
	REGDB_E_LAST
	REGDB_E_READREGDB
	REGDB_E_WRITEREGDB
	REGDB_S_FIRST
	REGDB_S_LAST
	RPC_E_ATTEMPTED_MULTITHREAD
	RPC_E_CALL_CANCELED
	RPC_E_CALL_REJECTED
	RPC_E_CANTCALLOUT_AGAIN
	RPC_E_CANTCALLOUT_INASYNCCALL
	RPC_E_CANTCALLOUT_INEXTERNALCALL
	RPC_E_CANTCALLOUT_ININPUTSYNCCALL
	RPC_E_CANTPOST_INSENDCALL
	RPC_E_CANTTRANSMIT_CALL
	RPC_E_CHANGED_MODE
	RPC_E_CLIENT_CANTMARSHAL_DATA
	RPC_E_CLIENT_CANTUNMARSHAL_DATA
	RPC_E_CLIENT_DIED
	RPC_E_CONNECTION_TERMINATED
	RPC_E_DISCONNECTED
	RPC_E_FAULT
	RPC_E_INVALIDMETHOD
	RPC_E_INVALID_CALLDATA
	RPC_E_INVALID_DATA
	RPC_E_INVALID_DATAPACKET
	RPC_E_INVALID_PARAMETER
	RPC_E_NOT_REGISTERED
	RPC_E_OUT_OF_RESOURCES
	RPC_E_RETRY
	RPC_E_SERVERCALL_REJECTED
	RPC_E_SERVERCALL_RETRYLATER
	RPC_E_SERVERFAULT
	RPC_E_SERVER_CANTMARSHAL_DATA
	RPC_E_SERVER_CANTUNMARSHAL_DATA
	RPC_E_SERVER_DIED
	RPC_E_SERVER_DIED_DNE
	RPC_E_SYS_CALL_FAILED
	RPC_E_THREAD_NOT_INIT
	RPC_E_UNEXPECTED
	RPC_E_WRONG_THREAD
	RPC_S_ADDRESS_ERROR
	RPC_S_ALREADY_LISTENING
	RPC_S_ALREADY_REGISTERED
	RPC_S_BINDING_HAS_NO_AUTH
	RPC_S_BINDING_INCOMPLETE
	RPC_S_CALL_CANCELLED
	RPC_S_CALL_FAILED
	RPC_S_CALL_FAILED_DNE
	RPC_S_CALL_IN_PROGRESS
	RPC_S_CANNOT_SUPPORT
	RPC_S_CANT_CREATE_ENDPOINT
	RPC_S_COMM_FAILURE
	RPC_S_DUPLICATE_ENDPOINT
	RPC_S_ENTRY_ALREADY_EXISTS
	RPC_S_ENTRY_NOT_FOUND
	RPC_S_FP_DIV_ZERO
	RPC_S_FP_OVERFLOW
	RPC_S_FP_UNDERFLOW
	RPC_S_GROUP_MEMBER_NOT_FOUND
	RPC_S_INCOMPLETE_NAME
	RPC_S_INTERFACE_NOT_FOUND
	RPC_S_INTERNAL_ERROR
	RPC_S_INVALID_AUTH_IDENTITY
	RPC_S_INVALID_BINDING
	RPC_S_INVALID_BOUND
	RPC_S_INVALID_ENDPOINT_FORMAT
	RPC_S_INVALID_NAF_ID
	RPC_S_INVALID_NAME_SYNTAX
	RPC_S_INVALID_NETWORK_OPTIONS
	RPC_S_INVALID_NET_ADDR
	RPC_S_INVALID_OBJECT
	RPC_S_INVALID_RPC_PROTSEQ
	RPC_S_INVALID_STRING_BINDING
	RPC_S_INVALID_STRING_UUID
	RPC_S_INVALID_TAG
	RPC_S_INVALID_TIMEOUT
	RPC_S_INVALID_VERS_OPTION
	RPC_S_MAX_CALLS_TOO_SMALL
	RPC_S_NAME_SERVICE_UNAVAILABLE
	RPC_S_NOTHING_TO_EXPORT
	RPC_S_NOT_ALL_OBJS_UNEXPORTED
	RPC_S_NOT_CANCELLED
	RPC_S_NOT_LISTENING
	RPC_S_NOT_RPC_ERROR
	RPC_S_NO_BINDINGS
	RPC_S_NO_CALL_ACTIVE
	RPC_S_NO_CONTEXT_AVAILABLE
	RPC_S_NO_ENDPOINT_FOUND
	RPC_S_NO_ENTRY_NAME
	RPC_S_NO_INTERFACES
	RPC_S_NO_MORE_BINDINGS
	RPC_S_NO_MORE_MEMBERS
	RPC_S_NO_PRINC_NAME
	RPC_S_NO_PROTSEQS
	RPC_S_NO_PROTSEQS_REGISTERED
	RPC_S_OBJECT_NOT_FOUND
	RPC_S_OUT_OF_RESOURCES
	RPC_S_PROCNUM_OUT_OF_RANGE
	RPC_S_PROTOCOL_ERROR
	RPC_S_PROTSEQ_NOT_FOUND
	RPC_S_PROTSEQ_NOT_SUPPORTED
	RPC_S_SEC_PKG_ERROR
	RPC_S_SERVER_TOO_BUSY
	RPC_S_SERVER_UNAVAILABLE
	RPC_S_STRING_TOO_LONG
	RPC_S_TYPE_ALREADY_REGISTERED
	RPC_S_UNKNOWN_AUTHN_LEVEL
	RPC_S_UNKNOWN_AUTHN_SERVICE
	RPC_S_UNKNOWN_AUTHN_TYPE
	RPC_S_UNKNOWN_AUTHZ_SERVICE
	RPC_S_UNKNOWN_IF
	RPC_S_UNKNOWN_MGR_TYPE
	RPC_S_UNSUPPORTED_AUTHN_LEVEL
	RPC_S_UNSUPPORTED_NAME_SYNTAX
	RPC_S_UNSUPPORTED_TRANS_SYN
	RPC_S_UNSUPPORTED_TYPE
	RPC_S_UUID_LOCAL_ONLY
	RPC_S_UUID_NO_ADDRESS
	RPC_S_WRONG_KIND_OF_BINDING
	RPC_S_ZERO_DIVIDE
	RPC_X_BAD_STUB_DATA
	RPC_X_BYTE_COUNT_TOO_SMALL
	RPC_X_ENUM_VALUE_OUT_OF_RANGE
	RPC_X_INVALID_ES_ACTION
	RPC_X_NO_MORE_ENTRIES
	RPC_X_NULL_REF_POINTER
	RPC_X_SS_CANNOT_GET_CALL_HANDLE
	RPC_X_SS_CHAR_TRANS_OPEN_FAIL
	RPC_X_SS_CHAR_TRANS_SHORT_FILE
	RPC_X_SS_CONTEXT_DAMAGED
	RPC_X_SS_HANDLES_MISMATCH
	RPC_X_SS_IN_NULL_CONTEXT
	RPC_X_WRONG_ES_VERSION
	RPC_X_WRONG_STUB_VERSION
	SEVERITY_ERROR
	SEVERITY_SUCCESS
	STG_E_ABNORMALAPIEXIT
	STG_E_ACCESSDENIED
	STG_E_CANTSAVE
	STG_E_DISKISWRITEPROTECTED
	STG_E_EXTANTMARSHALLINGS
	STG_E_FILEALREADYEXISTS
	STG_E_FILENOTFOUND
	STG_E_INSUFFICIENTMEMORY
	STG_E_INUSE
	STG_E_INVALIDFLAG
	STG_E_INVALIDFUNCTION
	STG_E_INVALIDHANDLE
	STG_E_INVALIDHEADER
	STG_E_INVALIDNAME
	STG_E_INVALIDPARAMETER
	STG_E_INVALIDPOINTER
	STG_E_LOCKVIOLATION
	STG_E_MEDIUMFULL
	STG_E_NOMOREFILES
	STG_E_NOTCURRENT
	STG_E_NOTFILEBASEDSTORAGE
	STG_E_OLDDLL
	STG_E_OLDFORMAT
	STG_E_PATHNOTFOUND
	STG_E_READFAULT
	STG_E_REVERTED
	STG_E_SEEKERROR
	STG_E_SHAREREQUIRED
	STG_E_SHAREVIOLATION
	STG_E_TOOMANYOPENFILES
	STG_E_UNIMPLEMENTEDFUNCTION
	STG_E_UNKNOWN
	STG_E_WRITEFAULT
	STG_S_CONVERTED
	S_FALSE
	S_OK
	TYPE_E_AMBIGUOUSNAME
	TYPE_E_BADMODULEKIND
	TYPE_E_BUFFERTOOSMALL
	TYPE_E_CANTCREATETMPFILE
	TYPE_E_CANTLOADLIBRARY
	TYPE_E_CIRCULARTYPE
	TYPE_E_DLLFUNCTIONNOTFOUND
	TYPE_E_DUPLICATEID
	TYPE_E_ELEMENTNOTFOUND
	TYPE_E_INCONSISTENTPROPFUNCS
	TYPE_E_INVALIDID
	TYPE_E_INVALIDSTATE
	TYPE_E_INVDATAREAD
	TYPE_E_IOERROR
	TYPE_E_LIBNOTREGISTERED
	TYPE_E_NAMECONFLICT
	TYPE_E_OUTOFBOUNDS
	TYPE_E_QUALIFIEDNAMEDISALLOWED
	TYPE_E_REGISTRYACCESS
	TYPE_E_SIZETOOBIG
	TYPE_E_TYPEMISMATCH
	TYPE_E_UNDEFINEDTYPE
	TYPE_E_UNKNOWNLCID
	TYPE_E_UNSUPFORMAT
	TYPE_E_WRONGTYPEKIND
	VIEW_E_DRAW
	VIEW_E_FIRST
	VIEW_E_LAST
	VIEW_S_ALREADY_FROZEN
	VIEW_S_FIRST
	VIEW_S_LAST
);

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.  If a constant is not found then control is passed
    # to the AUTOLOAD in AutoLoader.

    my($constname);
    ($constname = $AUTOLOAD) =~ s/.*:://;
    #reset $! to zero to reset any current errors.
    local $! = 0;
    local $^E = 0;
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
	    ($pack,$file,$line) = caller;
	    die "Your vendor has not defined Win32::WinError macro $constname, used at $file line $line.";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap Win32::WinError;

# Preloaded methods go here.

# Autoload methods go after __END__, and are processed by the autosplit program.

1;
__END__
