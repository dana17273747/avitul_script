local ffi = require("ffi")
ffi.cdef [[
        typedef unsigned int uintptr_t;
        typedef char* va_list;
    typedef unsigned int     size_t;
    typedef int              ptrdiff_t;
    typedef int              intptr_t;
    typedef _Bool __vcrt_bool;
    typedef unsigned short wchar_t;
    void __cdecl __security_init_cookie(void);
        void __fastcall __security_check_cookie(  uintptr_t _StackCookie);
        __declspec(noreturn) void __cdecl __report_gsfailure(void);
extern uintptr_t __security_cookie;
    typedef _Bool __crt_bool;
 void __cdecl _invalid_parameter_noinfo(void);
 __declspec(noreturn) void __cdecl _invalid_parameter_noinfo_noreturn(void);
__declspec(noreturn)
 void __cdecl _invoke_watson(
      wchar_t const* _Expression,
      wchar_t const* _FunctionName,
      wchar_t const* _FileName,
            unsigned int _LineNo,
            uintptr_t _Reserved);
typedef int                           errno_t;
typedef unsigned short                wint_t;
typedef unsigned short                wctype_t;
typedef long                          __time32_t;
typedef __int64                       __time64_t;
typedef struct __crt_locale_data_public
{
      unsigned short const* _locale_pctype;
      int _locale_mb_cur_max;
               unsigned int _locale_lc_codepage;
} __crt_locale_data_public;
typedef struct __crt_locale_pointers
{
    struct __crt_locale_data*    locinfo;
    struct __crt_multibyte_data* mbcinfo;
} __crt_locale_pointers;
typedef __crt_locale_pointers* _locale_t;
typedef struct _Mbstatet
{
    unsigned long _Wchar;
    unsigned short _Byte, _State;
} _Mbstatet;
typedef _Mbstatet mbstate_t;
        typedef __time64_t time_t;
    typedef size_t rsize_t;
     int* __cdecl _errno(void);
     errno_t __cdecl _set_errno(  int _Value);
     errno_t __cdecl _get_errno(  int* _Value);
 extern unsigned long  __cdecl __threadid(void);
 extern uintptr_t __cdecl __threadhandle(void);
typedef signed char        int8_t;
typedef short              int16_t;
typedef int                int32_t;
typedef long long          int64_t;
typedef unsigned char      uint8_t;
typedef unsigned short     uint16_t;
typedef unsigned int       uint32_t;
typedef unsigned long long uint64_t;
typedef signed char        int_least8_t;
typedef short              int_least16_t;
typedef int                int_least32_t;
typedef long long          int_least64_t;
typedef unsigned char      uint_least8_t;
typedef unsigned short     uint_least16_t;
typedef unsigned int       uint_least32_t;
typedef unsigned long long uint_least64_t;
typedef signed char        int_fast8_t;
typedef int                int_fast16_t;
typedef int                int_fast32_t;
typedef long long          int_fast64_t;
typedef unsigned char      uint_fast8_t;
typedef unsigned int       uint_fast16_t;
typedef unsigned int       uint_fast32_t;
typedef unsigned long long uint_fast64_t;
typedef long long          intmax_t;
typedef unsigned long long uintmax_t;
     int* __cdecl _errno(void);
     errno_t __cdecl _set_errno(  int _Value);
     errno_t __cdecl _get_errno(  int* _Value);
     unsigned long* __cdecl __doserrno(void);
     errno_t __cdecl _set_doserrno(  unsigned long _Value);
     errno_t __cdecl _get_doserrno(  unsigned long * _Value);
 void * __cdecl memchr(
      void const* _Buf,
                                 int         _Val,
                                 size_t      _MaxCount
    );
int __cdecl memcmp(
      void const* _Buf1,
      void const* _Buf2,
                         size_t      _Size
    );
void* __cdecl memcpy(
      void* _Dst,
            void const* _Src,
                               size_t      _Size
    );
 void* __cdecl memmove(
      void*       _Dst,
            void const* _Src,
                                   size_t      _Size
    );
void* __cdecl memset(
      void*  _Dst,
                               int    _Val,
                               size_t _Size
    );
 char * __cdecl strchr(
      char const* _Str,
        int         _Val
    );
 char * __cdecl strrchr(
      char const* _Str,
        int         _Ch
    );
 char * __cdecl strstr(
      char const* _Str,
      char const* _SubStr
    );
 wchar_t * __cdecl wcschr(
      wchar_t const* _Str,
        wchar_t        _Ch
    );
 wchar_t * __cdecl wcsrchr(
      wchar_t const* _Str,
        wchar_t        _Ch
    );
 wchar_t * __cdecl wcsstr(
      wchar_t const* _Str,
      wchar_t const* _SubStr
    );
    static __inline errno_t __cdecl memcpy_s(
          void*       const _Destination,
                                                              rsize_t     const _DestinationSize,
                                 void const* const _Source,
                                                              rsize_t     const _SourceSize
        )
    {
        if (_SourceSize == 0)
        {
            return 0;
        }
        { int _Expr_val=!!(_Destination != ((void *)0)); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        if (_Source == ((void *)0) || _DestinationSize < _SourceSize)
        {
            memset(_Destination, 0, _DestinationSize);
            { int _Expr_val=!!(_Source != ((void *)0)); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
            { int _Expr_val=!!(_DestinationSize >= _SourceSize); if (!(_Expr_val)) { (*_errno()) = 34; _invalid_parameter_noinfo(); return 34; } };
            return 22;
        }
        memcpy(_Destination, _Source, _SourceSize);
        return 0;
    }
    static __inline errno_t __cdecl memmove_s(
          void*       const _Destination,
                                                              rsize_t     const _DestinationSize,
                                 void const* const _Source,
                                                              rsize_t     const _SourceSize
        )
    {
        if (_SourceSize == 0)
        {
            return 0;
        }
        { int _Expr_val=!!(_Destination != ((void *)0)); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        { int _Expr_val=!!(_Source != ((void *)0)); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        { int _Expr_val=!!(_DestinationSize >= _SourceSize); if (!(_Expr_val)) { (*_errno()) = 34; _invalid_parameter_noinfo(); return 34; } };
        memmove(_Destination, _Source, _SourceSize);
        return 0;
    }
 int __cdecl _memicmp(
      void const* _Buf1,
      void const* _Buf2,
                             size_t      _Size
    );
 int __cdecl _memicmp_l(
      void const* _Buf1,
      void const* _Buf2,
                             size_t      _Size,
                         _locale_t   _Locale
    );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_memccpy" ". See online help for details."))
     void* __cdecl memccpy(
          void*       _Dst,
            void const* _Src,
                                   int         _Val,
                                   size_t      _Size
        );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_memicmp" ". See online help for details."))
     int __cdecl memicmp(
          void const* _Buf1,
          void const* _Buf2,
                                 size_t      _Size
        );
     errno_t __cdecl wcscat_s(
          wchar_t* _Destination,
          rsize_t _SizeInWords,
          wchar_t const* _Source
        );
     errno_t __cdecl wcscpy_s(
          wchar_t* _Destination,
          rsize_t _SizeInWords,
          wchar_t const* _Source
        );
     errno_t __cdecl wcsncat_s(
          wchar_t*       _Destination,
                                     rsize_t        _SizeInWords,
               wchar_t const* _Source,
                                     rsize_t        _MaxCount
        );
     errno_t __cdecl wcsncpy_s(
          wchar_t*       _Destination,
                                  rsize_t        _SizeInWords,
            wchar_t const* _Source,
                                  rsize_t        _MaxCount
        );
     wchar_t* __cdecl wcstok_s(
                          wchar_t*       _String,
                                 wchar_t const* _Delimiter,
            wchar_t**      _Context
        );
 __declspec(allocator) wchar_t* __cdecl _wcsdup(
      wchar_t const* _String
    );
    __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl wcscat( wchar_t *_Destination,  wchar_t const* _Source);
 int __cdecl wcscmp(
      wchar_t const* _String1,
      wchar_t const* _String2
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl wcscpy( wchar_t *_Destination,  wchar_t const* _Source);
 size_t __cdecl wcscspn(
      wchar_t const* _String,
      wchar_t const* _Control
    );
 size_t __cdecl wcslen(
      wchar_t const* _String
    );
 size_t __cdecl wcsnlen(
      wchar_t const* _Source,
                            size_t         _MaxCount
    );
    static __inline size_t __cdecl wcsnlen_s(
          wchar_t const* _Source,
                                size_t         _MaxCount
        )
    {
        return (_Source == 0) ? 0 : wcsnlen(_Source, _MaxCount);
    }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl wcsncat(  wchar_t *_Destination,   wchar_t const* _Source,   size_t _Count);
 int __cdecl wcsncmp(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl wcsncpy(    wchar_t *_Destination,   wchar_t const* _Source,   size_t _Count);
 wchar_t * __cdecl wcspbrk(
      wchar_t const* _String,
      wchar_t const* _Control
    );
 size_t __cdecl wcsspn(
      wchar_t const* _String,
      wchar_t const* _Control
    );
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
 wchar_t* __cdecl wcstok(
                          wchar_t*       _String,
                                 wchar_t const* _Delimiter,
        wchar_t**      _Context
    );
      __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    static __inline wchar_t* __cdecl _wcstok(
          wchar_t*       const _String,
                 wchar_t const* const _Delimiter
        )
    {
        return wcstok(_String, _Delimiter, 0);
    }
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
 wchar_t* __cdecl _wcserror(
      int _ErrorNumber
    );
 errno_t __cdecl _wcserror_s(
      wchar_t* _Buffer,
                                  size_t   _SizeInWords,
                                  int      _ErrorNumber
    );
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "__wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
 wchar_t* __cdecl __wcserror(
      wchar_t const* _String
    );
  errno_t __cdecl __wcserror_s(
      wchar_t*       _Buffer,
                                  size_t         _SizeInWords,
                                wchar_t const* _ErrorMessage
    );
   int __cdecl _wcsicmp(
      wchar_t const* _String1,
      wchar_t const* _String2
    );
   int __cdecl _wcsicmp_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );
   int __cdecl _wcsnicmp(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );
   int __cdecl _wcsnicmp_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );
  errno_t __cdecl _wcsnset_s(
      wchar_t* _Destination,
                                 size_t   _SizeInWords,
                                 wchar_t  _Value,
                                 size_t   _MaxCount
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl _wcsnset(  wchar_t *_String,   wchar_t _Value,   size_t _MaxCount);
 wchar_t* __cdecl _wcsrev(
      wchar_t* _String
    );
  errno_t __cdecl _wcsset_s(
      wchar_t* _Destination,
                                 size_t   _SizeInWords,
                                 wchar_t  _Value
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl _wcsset(  wchar_t *_String,   wchar_t _Value);
  errno_t __cdecl _wcslwr_s(
      wchar_t* _String,
                                 size_t   _SizeInWords
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl _wcslwr( wchar_t *_String);
 errno_t __cdecl _wcslwr_s_l(
      wchar_t*  _String,
                                 size_t    _SizeInWords,
                             _locale_t _Locale
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl _wcslwr_l(  wchar_t *_String,   _locale_t _Locale);
 errno_t __cdecl _wcsupr_s(
      wchar_t* _String,
                          size_t   _Size
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl _wcsupr( wchar_t *_String);
 errno_t __cdecl _wcsupr_s_l(
      wchar_t*  _String,
                          size_t    _Size,
                      _locale_t _Locale
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  wchar_t* __cdecl _wcsupr_l(  wchar_t *_String,   _locale_t _Locale);
 size_t __cdecl wcsxfrm(
        wchar_t*       _Destination,
                                         wchar_t const* _Source,
                size_t         _MaxCount
    );
 size_t __cdecl _wcsxfrm_l(
        wchar_t*       _Destination,
                                         wchar_t const* _Source,
                size_t         _MaxCount,
                                       _locale_t      _Locale
    );
 int __cdecl wcscoll(
      wchar_t const* _String1,
      wchar_t const* _String2
    );
 int __cdecl _wcscoll_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );
 int __cdecl _wcsicoll(
      wchar_t const* _String1,
      wchar_t const* _String2
    );
 int __cdecl _wcsicoll_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );
 int __cdecl _wcsncoll(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );
 int __cdecl _wcsncoll_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );
 int __cdecl _wcsnicoll(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );
 int __cdecl _wcsnicoll_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsdup" ". See online help for details."))
     wchar_t* __cdecl wcsdup(
          wchar_t const* _String
        );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsicmp" ". See online help for details."))
     int __cdecl wcsicmp(
          wchar_t const* _String1,
          wchar_t const* _String2
        );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsnicmp" ". See online help for details."))
     int __cdecl wcsnicmp(
          wchar_t const* _String1,
          wchar_t const* _String2,
                                size_t         _MaxCount
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsnset" ". See online help for details."))
     wchar_t* __cdecl wcsnset(
          wchar_t* _String,
                                  wchar_t  _Value,
                                  size_t   _MaxCount
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsrev" ". See online help for details."))
     wchar_t* __cdecl wcsrev(
          wchar_t* _String
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsset" ". See online help for details."))
     wchar_t* __cdecl wcsset(
          wchar_t* _String,
               wchar_t  _Value
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcslwr" ". See online help for details."))
     wchar_t* __cdecl wcslwr(
          wchar_t* _String
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsupr" ". See online help for details."))
     wchar_t* __cdecl wcsupr(
          wchar_t* _String
        );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsicoll" ". See online help for details."))
     int __cdecl wcsicoll(
          wchar_t const* _String1,
          wchar_t const* _String2
        );
     errno_t __cdecl strcpy_s(
          char*       _Destination,
                                  rsize_t     _SizeInBytes,
                                char const* _Source
        );
     errno_t __cdecl strcat_s(
          char*       _Destination,
                                     rsize_t     _SizeInBytes,
                                   char const* _Source
        );
     errno_t __cdecl strerror_s(
          char*  _Buffer,
                                  size_t _SizeInBytes,
                                  int    _ErrorNumber);
     errno_t __cdecl strncat_s(
          char*       _Destination,
                                     rsize_t     _SizeInBytes,
               char const* _Source,
                                     rsize_t     _MaxCount
        );
     errno_t __cdecl strncpy_s(
          char*       _Destination,
                                  rsize_t     _SizeInBytes,
            char const* _Source,
                                  rsize_t     _MaxCount
        );
     char*  __cdecl strtok_s(
                          char*       _String,
                                 char const* _Delimiter,
            char**      _Context
        );
 void* __cdecl _memccpy(
      void*       _Dst,
                                   void const* _Src,
                                   int         _Val,
                                   size_t      _MaxCount
    );
    __declspec(deprecated("This function or variable may be unsafe. Consider using " "strcat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl strcat( char *_Destination,  char const* _Source);
int __cdecl strcmp(
      char const* _Str1,
      char const* _Str2
    );
 int __cdecl _strcmpi(
      char const* _String1,
      char const* _String2
    );
 int __cdecl strcoll(
      char const* _String1,
      char const* _String2
    );
 int __cdecl _strcoll_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl strcpy( char *_Destination,  char const* _Source);
 size_t __cdecl strcspn(
      char const* _Str,
      char const* _Control
    );
 __declspec(allocator) char* __cdecl _strdup(
      char const* _Source
    );
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "_strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
 char*  __cdecl _strerror(
      char const* _ErrorMessage
    );
 errno_t __cdecl _strerror_s(
      char*       _Buffer,
                              size_t      _SizeInBytes,
                        char const* _ErrorMessage
    );
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
 char* __cdecl strerror(
      int _ErrorMessage
    );
 int __cdecl _stricmp(
      char const* _String1,
      char const* _String2
    );
 int __cdecl _stricoll(
      char const* _String1,
      char const* _String2
    );
 int __cdecl _stricoll_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );
 int __cdecl _stricmp_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );
size_t __cdecl strlen(
      char const* _Str
    );
 errno_t __cdecl _strlwr_s(
      char*  _String,
                          size_t _Size
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl _strlwr( char *_String);
 errno_t __cdecl _strlwr_s_l(
      char*     _String,
                          size_t    _Size,
                      _locale_t _Locale
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl _strlwr_l(  char *_String,   _locale_t _Locale);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl strncat(  char *_Destination,   char const* _Source,   size_t _Count);
 int __cdecl strncmp(
      char const* _Str1,
      char const* _Str2,
                            size_t      _MaxCount
    );
 int __cdecl _strnicmp(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );
 int __cdecl _strnicmp_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );
 int __cdecl _strnicoll(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );
 int __cdecl _strnicoll_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );
 int __cdecl _strncoll(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );
 int __cdecl _strncoll_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );
 size_t __cdecl __strncnt(
      char const* _String,
                         size_t      _Count
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl strncpy(    char *_Destination,   char const* _Source,   size_t _Count);
 size_t __cdecl strnlen(
      char const* _String,
                            size_t      _MaxCount
    );
    static __inline size_t __cdecl strnlen_s(
          char const* _String,
                                size_t      _MaxCount
        )
    {
        return _String == 0 ? 0 : strnlen(_String, _MaxCount);
    }
 errno_t __cdecl _strnset_s(
      char*  _String,
                                 size_t _SizeInBytes,
                                 int    _Value,
                                 size_t _MaxCount
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl _strnset(  char *_Destination,   int _Value,   size_t _Count);
 char * __cdecl strpbrk(
      char const* _Str,
      char const* _Control
    );
 char* __cdecl _strrev(
      char* _Str
    );
 errno_t __cdecl _strset_s(
      char*  _Destination,
                                     size_t _DestinationSize,
                                     int    _Value
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl _strset( char *_Destination,  int _Value);
 size_t __cdecl strspn(
      char const* _Str,
      char const* _Control
    );
  __declspec(deprecated("This function or variable may be unsafe. Consider using " "strtok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
 char* __cdecl strtok(
      char*       _String,
             char const* _Delimiter
    );
 errno_t __cdecl _strupr_s(
      char*  _String,
                          size_t _Size
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl _strupr( char *_String);
 errno_t __cdecl _strupr_s_l(
      char*     _String,
                          size_t    _Size,
                      _locale_t _Locale
    );
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))  char* __cdecl _strupr_l(  char *_String,   _locale_t _Locale);
 size_t __cdecl strxfrm(
        char*       _Destination,
                                         char const* _Source,
                 size_t      _MaxCount
    );
 size_t __cdecl _strxfrm_l(
        char*       _Destination,
                                         char const* _Source,
                 size_t      _MaxCount,
                                       _locale_t   _Locale
    );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strdup" ". See online help for details."))
     char* __cdecl strdup(
          char const* _String
        );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strcmpi" ". See online help for details."))
     int __cdecl strcmpi(
          char const* _String1,
          char const* _String2
        );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_stricmp" ". See online help for details."))
     int __cdecl stricmp(
          char const* _String1,
          char const* _String2
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strlwr" ". See online help for details."))
     char* __cdecl strlwr(
          char* _String
        );
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strnicmp" ". See online help for details."))
     int __cdecl strnicmp(
          char const* _String1,
          char const* _String2,
                                size_t      _MaxCount
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strnset" ". See online help for details."))
     char* __cdecl strnset(
          char*  _String,
                                  int    _Value,
                                  size_t _MaxCount
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strrev" ". See online help for details."))
     char* __cdecl strrev(
          char* _String
        );
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strset" ". See online help for details."))
    char* __cdecl strset(
          char* _String,
               int   _Value);
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strupr" ". See online help for details."))
     char* __cdecl strupr(
          char* _String
        );
typedef struct BLRange BLRange;
typedef struct BLRandom BLRandom;
typedef struct BLFileCore BLFileCore;
typedef struct BLFileInfo BLFileInfo;
typedef struct BLRuntimeScopeCore BLRuntimeScopeCore;
typedef struct BLRuntimeBuildInfo BLRuntimeBuildInfo;
typedef struct BLRuntimeSystemInfo BLRuntimeSystemInfo;
typedef struct BLRuntimeResourceInfo BLRuntimeResourceInfo;
typedef struct BLRgba BLRgba;
typedef struct BLRgba32 BLRgba32;
typedef struct BLRgba64 BLRgba64;
typedef struct BLPoint BLPoint;
typedef struct BLPointI BLPointI;
typedef struct BLSize BLSize;
typedef struct BLSizeI BLSizeI;
typedef struct BLBox BLBox;
typedef struct BLBoxI BLBoxI;
typedef struct BLRect BLRect;
typedef struct BLRectI BLRectI;
typedef struct BLLine BLLine;
typedef struct BLTriangle BLTriangle;
typedef struct BLRoundRect BLRoundRect;
typedef struct BLCircle BLCircle;
typedef struct BLEllipse BLEllipse;
typedef struct BLArc BLArc;
typedef struct BLMatrix2D BLMatrix2D;
typedef struct BLApproximationOptions BLApproximationOptions;
typedef struct BLStrokeOptionsCore BLStrokeOptionsCore;
typedef struct BLFormatInfo BLFormatInfo;
typedef struct BLObjectCore BLObjectCore;
typedef struct BLObjectImpl BLObjectImpl;
typedef struct BLObjectVirt BLObjectVirt;
typedef struct BLObjectVirtBase BLObjectVirtBase;
typedef struct BLObjectInfo BLObjectInfo;
typedef union BLObjectDetail BLObjectDetail;
typedef struct BLArrayCore BLArrayCore;
typedef struct BLArrayImpl BLArrayImpl;
typedef struct BLBitArrayCore BLBitArrayCore;
typedef struct BLBitArrayImpl BLBitArrayImpl;
typedef struct BLBitSetCore BLBitSetCore;
typedef struct BLBitSetData BLBitSetData;
typedef struct BLBitSetImpl BLBitSetImpl;
typedef struct BLBitSetSegment BLBitSetSegment;
typedef struct BLBitSetBuilderCore BLBitSetBuilderCore;
typedef struct BLStringCore BLStringCore;
typedef struct BLStringImpl BLStringImpl;
typedef struct BLPathCore BLPathCore;
typedef struct BLPathImpl BLPathImpl;
typedef struct BLPathView BLPathView;
typedef struct BLImageData BLImageData;
typedef struct BLImageInfo BLImageInfo;
typedef struct BLImageCore BLImageCore;
typedef struct BLImageImpl BLImageImpl;
typedef struct BLImageCodecCore BLImageCodecCore;
typedef struct BLImageCodecImpl BLImageCodecImpl;
typedef struct BLImageCodecVirt BLImageCodecVirt;
typedef struct BLImageDecoderCore BLImageDecoderCore;
typedef struct BLImageDecoderImpl BLImageDecoderImpl;
typedef struct BLImageDecoderVirt BLImageDecoderVirt;
typedef struct BLImageEncoderCore BLImageEncoderCore;
typedef struct BLImageEncoderImpl BLImageEncoderImpl;
typedef struct BLImageEncoderVirt BLImageEncoderVirt;
typedef struct BLPixelConverterCore BLPixelConverterCore;
typedef struct BLPixelConverterOptions BLPixelConverterOptions;
typedef struct BLGradientCore BLGradientCore;
typedef struct BLGradientImpl BLGradientImpl;
typedef struct BLGradientStop BLGradientStop;
typedef struct BLLinearGradientValues BLLinearGradientValues;
typedef struct BLRadialGradientValues BLRadialGradientValues;
typedef struct BLConicGradientValues BLConicGradientValues;
typedef struct BLPatternCore BLPatternCore;
typedef struct BLPatternImpl BLPatternImpl;
typedef struct BLContextCookie BLContextCookie;
typedef struct BLContextCreateInfo BLContextCreateInfo;
typedef struct BLContextHints BLContextHints;
typedef struct BLContextState BLContextState;
typedef struct BLContextCore BLContextCore;
typedef struct BLContextImpl BLContextImpl;
typedef struct BLContextVirt BLContextVirt;
typedef struct BLGlyphBufferCore BLGlyphBufferCore;
typedef struct BLGlyphBufferImpl BLGlyphBufferImpl;
typedef struct BLGlyphInfo BLGlyphInfo;
typedef struct BLGlyphMappingState BLGlyphMappingState;
typedef struct BLGlyphOutlineSinkInfo BLGlyphOutlineSinkInfo;
typedef struct BLGlyphPlacement BLGlyphPlacement;
typedef struct BLGlyphRun BLGlyphRun;
typedef struct BLFontUnicodeCoverage BLFontUnicodeCoverage;
typedef struct BLFontFaceInfo BLFontFaceInfo;
typedef struct BLFontQueryProperties BLFontQueryProperties;
typedef struct BLFontFeatureItem BLFontFeatureItem;
typedef struct BLFontFeatureSettingsCore BLFontFeatureSettingsCore;
typedef struct BLFontFeatureSettingsImpl BLFontFeatureSettingsImpl;
typedef struct BLFontFeatureSettingsView BLFontFeatureSettingsView;
typedef struct BLFontDesignMetrics BLFontDesignMetrics;
typedef struct BLFontMatrix BLFontMatrix;
typedef struct BLFontMetrics BLFontMetrics;
typedef struct BLFontPanose BLFontPanose;
typedef struct BLFontTable BLFontTable;
typedef struct BLFontVariationItem BLFontVariationItem;
typedef struct BLFontVariationSettingsCore BLFontVariationSettingsCore;
typedef struct BLFontVariationSettingsImpl BLFontVariationSettingsImpl;
typedef struct BLFontVariationSettingsView BLFontVariationSettingsView;
typedef struct BLTextMetrics BLTextMetrics;
typedef struct BLFontCore BLFontCore;
typedef struct BLFontImpl BLFontImpl;
typedef struct BLFontDataCore BLFontDataCore;
typedef struct BLFontDataImpl BLFontDataImpl;
typedef struct BLFontDataVirt BLFontDataVirt;
typedef struct BLFontFaceCore BLFontFaceCore;
typedef struct BLFontFaceImpl BLFontFaceImpl;
typedef struct BLFontFaceVirt BLFontFaceVirt;
typedef struct BLFontManagerCore BLFontManagerCore;
typedef struct BLFontManagerImpl BLFontManagerImpl;
typedef struct BLFontManagerVirt BLFontManagerVirt;
typedef struct BLVarCore BLVarCore;
typedef uint32_t BLResult;
typedef uint32_t BLTag;
typedef uint64_t BLUniqueId;
typedef void BLUnknown;
typedef void (__cdecl* BLDebugMessageSinkFunc)(const char* message, size_t size, void* userData) ;
typedef enum BLResultCode BLResultCode; enum BLResultCode {
  BL_SUCCESS = 0,
  BL_ERROR_START_INDEX = 0x00010000u,
  BL_ERROR_OUT_OF_MEMORY = 0x00010000u,
  BL_ERROR_INVALID_VALUE,
  BL_ERROR_INVALID_STATE,
  BL_ERROR_INVALID_HANDLE,
  BL_ERROR_INVALID_CONVERSION,
  BL_ERROR_OVERFLOW,
  BL_ERROR_NOT_INITIALIZED,
  BL_ERROR_NOT_IMPLEMENTED,
  BL_ERROR_NOT_PERMITTED,
  BL_ERROR_IO,
  BL_ERROR_BUSY,
  BL_ERROR_INTERRUPTED,
  BL_ERROR_TRY_AGAIN,
  BL_ERROR_TIMED_OUT,
  BL_ERROR_BROKEN_PIPE,
  BL_ERROR_INVALID_SEEK,
  BL_ERROR_SYMLINK_LOOP,
  BL_ERROR_FILE_TOO_LARGE,
  BL_ERROR_ALREADY_EXISTS,
  BL_ERROR_ACCESS_DENIED,
  BL_ERROR_MEDIA_CHANGED,
  BL_ERROR_READ_ONLY_FS,
  BL_ERROR_NO_DEVICE,
  BL_ERROR_NO_ENTRY,
  BL_ERROR_NO_MEDIA,
  BL_ERROR_NO_MORE_DATA,
  BL_ERROR_NO_MORE_FILES,
  BL_ERROR_NO_SPACE_LEFT,
  BL_ERROR_NOT_EMPTY,
  BL_ERROR_NOT_FILE,
  BL_ERROR_NOT_DIRECTORY,
  BL_ERROR_NOT_SAME_DEVICE,
  BL_ERROR_NOT_BLOCK_DEVICE,
  BL_ERROR_INVALID_FILE_NAME,
  BL_ERROR_FILE_NAME_TOO_LONG,
  BL_ERROR_TOO_MANY_OPEN_FILES,
  BL_ERROR_TOO_MANY_OPEN_FILES_BY_OS,
  BL_ERROR_TOO_MANY_LINKS,
  BL_ERROR_TOO_MANY_THREADS,
  BL_ERROR_THREAD_POOL_EXHAUSTED,
  BL_ERROR_FILE_EMPTY,
  BL_ERROR_OPEN_FAILED,
  BL_ERROR_NOT_ROOT_DEVICE,
  BL_ERROR_UNKNOWN_SYSTEM_ERROR,
  BL_ERROR_INVALID_ALIGNMENT,
  BL_ERROR_INVALID_SIGNATURE,
  BL_ERROR_INVALID_DATA,
  BL_ERROR_INVALID_STRING,
  BL_ERROR_INVALID_KEY,
  BL_ERROR_DATA_TRUNCATED,
  BL_ERROR_DATA_TOO_LARGE,
  BL_ERROR_DECOMPRESSION_FAILED,
  BL_ERROR_INVALID_GEOMETRY,
  BL_ERROR_NO_MATCHING_VERTEX,
  BL_ERROR_INVALID_CREATE_FLAGS,
  BL_ERROR_NO_MATCHING_COOKIE,
  BL_ERROR_NO_STATES_TO_RESTORE,
  BL_ERROR_TOO_MANY_SAVED_STATES,
  BL_ERROR_IMAGE_TOO_LARGE,
  BL_ERROR_IMAGE_NO_MATCHING_CODEC,
  BL_ERROR_IMAGE_UNKNOWN_FILE_FORMAT,
  BL_ERROR_IMAGE_DECODER_NOT_PROVIDED,
  BL_ERROR_IMAGE_ENCODER_NOT_PROVIDED,
  BL_ERROR_PNG_MULTIPLE_IHDR,
  BL_ERROR_PNG_INVALID_IDAT,
  BL_ERROR_PNG_INVALID_IEND,
  BL_ERROR_PNG_INVALID_PLTE,
  BL_ERROR_PNG_INVALID_TRNS,
  BL_ERROR_PNG_INVALID_FILTER,
  BL_ERROR_JPEG_UNSUPPORTED_FEATURE,
  BL_ERROR_JPEG_INVALID_SOS,
  BL_ERROR_JPEG_INVALID_SOF,
  BL_ERROR_JPEG_MULTIPLE_SOF,
  BL_ERROR_JPEG_UNSUPPORTED_SOF,
  BL_ERROR_FONT_NOT_INITIALIZED,
  BL_ERROR_FONT_NO_MATCH,
  BL_ERROR_FONT_NO_CHARACTER_MAPPING,
  BL_ERROR_FONT_MISSING_IMPORTANT_TABLE,
  BL_ERROR_FONT_FEATURE_NOT_AVAILABLE,
  BL_ERROR_FONT_CFF_INVALID_DATA,
  BL_ERROR_FONT_PROGRAM_TERMINATED,
  BL_ERROR_GLYPH_SUBSTITUTION_TOO_LARGE,
  BL_ERROR_INVALID_GLYPH
  ,BL_ERROR_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLByteOrder BLByteOrder; enum BLByteOrder {
  BL_BYTE_ORDER_LE = 0,
  BL_BYTE_ORDER_BE = 1,
  BL_BYTE_ORDER_NATIVE = 1234 == 1234 ? BL_BYTE_ORDER_LE : BL_BYTE_ORDER_BE,
  BL_BYTE_ORDER_SWAPPED = 1234 == 1234 ? BL_BYTE_ORDER_BE : BL_BYTE_ORDER_LE
  ,BL_BYTE_ORDER_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLDataAccessFlags BLDataAccessFlags; enum BLDataAccessFlags {
  BL_DATA_ACCESS_NO_FLAGS = 0x00u,
  BL_DATA_ACCESS_READ = 0x01u,
  BL_DATA_ACCESS_WRITE = 0x02u,
  BL_DATA_ACCESS_RW = 0x03u
  ,BL_DATA_ACCESS_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLDataSourceType BLDataSourceType; enum BLDataSourceType {
  BL_DATA_SOURCE_TYPE_NONE = 0,
  BL_DATA_SOURCE_TYPE_MEMORY = 1,
  BL_DATA_SOURCE_TYPE_FILE = 2,
  BL_DATA_SOURCE_TYPE_CUSTOM = 3,
  BL_DATA_SOURCE_TYPE_MAX_VALUE = 3
  ,BL_DATA_SOURCE_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLModifyOp BLModifyOp; enum BLModifyOp {
  BL_MODIFY_OP_ASSIGN_FIT = 0,
  BL_MODIFY_OP_ASSIGN_GROW = 1,
  BL_MODIFY_OP_APPEND_FIT = 2,
  BL_MODIFY_OP_APPEND_GROW = 3,
  BL_MODIFY_OP_MAX_VALUE = 3
  ,BL_MODIFY_OP_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLBooleanOp BLBooleanOp; enum BLBooleanOp {
  BL_BOOLEAN_OP_COPY = 0,
  BL_BOOLEAN_OP_AND = 1,
  BL_BOOLEAN_OP_OR = 2,
  BL_BOOLEAN_OP_XOR = 3,
  BL_BOOLEAN_OP_AND_NOT = 4,
  BL_BOOLEAN_OP_NOT_AND = 5,
  BL_BOOLEAN_OP_MAX_VALUE = 5
  ,BL_BOOLEAN_OP_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLExtendMode BLExtendMode; enum BLExtendMode {
  BL_EXTEND_MODE_PAD = 0,
  BL_EXTEND_MODE_REPEAT = 1,
  BL_EXTEND_MODE_REFLECT = 2,
  BL_EXTEND_MODE_PAD_X_PAD_Y = 0,
  BL_EXTEND_MODE_PAD_X_REPEAT_Y = 3,
  BL_EXTEND_MODE_PAD_X_REFLECT_Y = 4,
  BL_EXTEND_MODE_REPEAT_X_REPEAT_Y = 1,
  BL_EXTEND_MODE_REPEAT_X_PAD_Y = 5,
  BL_EXTEND_MODE_REPEAT_X_REFLECT_Y = 6,
  BL_EXTEND_MODE_REFLECT_X_REFLECT_Y = 2,
  BL_EXTEND_MODE_REFLECT_X_PAD_Y = 7,
  BL_EXTEND_MODE_REFLECT_X_REPEAT_Y = 8,
  BL_EXTEND_MODE_SIMPLE_MAX_VALUE = 2,
  BL_EXTEND_MODE_COMPLEX_MAX_VALUE = 8,
  BL_EXTEND_MODE_MAX_VALUE = 8
  ,BL_EXTEND_MODE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLTextEncoding BLTextEncoding; enum BLTextEncoding {
  BL_TEXT_ENCODING_UTF8 = 0,
  BL_TEXT_ENCODING_UTF16 = 1,
  BL_TEXT_ENCODING_UTF32 = 2,
  BL_TEXT_ENCODING_LATIN1 = 3,
  BL_TEXT_ENCODING_WCHAR
    = sizeof(wchar_t) == 4 ? BL_TEXT_ENCODING_UTF32 :
      sizeof(wchar_t) == 2 ? BL_TEXT_ENCODING_UTF16 : BL_TEXT_ENCODING_UTF8,
  BL_TEXT_ENCODING_MAX_VALUE = 3
  ,BL_TEXT_ENCODING_FORCE_UINT = 0xFFFFFFFFu
};
static inline BLResult blTraceError(BLResult result)  { return result; }
__declspec(dllimport) __declspec(noreturn) void __cdecl blRuntimeAssertionFailure(const char* file, int line, const char* msg) ;
struct BLRange {
  size_t start;
  size_t end;
};
typedef struct { const void* data; size_t size; } BLArrayView;
typedef struct { const char* data; size_t size; } BLStringView;
typedef BLArrayView BLDataView;
struct BLRgba32 {
  uint32_t value;
};
struct BLRgba64 {
  uint64_t value;
};
struct BLRgba {
  float r;
  float g;
  float b;
  float a;
};
typedef enum BLObjectInfoShift BLObjectInfoShift; enum BLObjectInfoShift {
  BL_OBJECT_INFO_P_SHIFT = 0,
  BL_OBJECT_INFO_Q_SHIFT = 8,
  BL_OBJECT_INFO_C_SHIFT = 8,
  BL_OBJECT_INFO_B_SHIFT = 12,
  BL_OBJECT_INFO_A_SHIFT = 16,
  BL_OBJECT_INFO_TYPE_SHIFT = 22,
  BL_OBJECT_INFO_R_SHIFT = 29,
  BL_OBJECT_INFO_D_SHIFT = 30,
  BL_OBJECT_INFO_M_SHIFT = 31
  ,BL_OBJECT_INFO_SHIFT_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLObjectInfoBits BLObjectInfoBits; enum BLObjectInfoBits {
  BL_OBJECT_INFO_P_MASK = 0xFFu << BL_OBJECT_INFO_P_SHIFT,
  BL_OBJECT_INFO_Q_MASK = 0xFFu << BL_OBJECT_INFO_Q_SHIFT,
  BL_OBJECT_INFO_C_MASK = 0x0Fu << BL_OBJECT_INFO_C_SHIFT,
  BL_OBJECT_INFO_B_MASK = 0x0Fu << BL_OBJECT_INFO_B_SHIFT,
  BL_OBJECT_INFO_A_MASK = 0x3Fu << BL_OBJECT_INFO_A_SHIFT,
  BL_OBJECT_INFO_FIELDS_MASK = 0x003FFFFF,
  BL_OBJECT_INFO_TYPE_MASK = 0x7Fu << BL_OBJECT_INFO_TYPE_SHIFT,
  BL_OBJECT_INFO_R_FLAG = 0x01u << BL_OBJECT_INFO_R_SHIFT,
  BL_OBJECT_INFO_D_FLAG = 0x01u << BL_OBJECT_INFO_D_SHIFT,
  BL_OBJECT_INFO_M_FLAG = 0x01u << BL_OBJECT_INFO_M_SHIFT,
  BL_OBJECT_INFO_MD_FLAGS = BL_OBJECT_INFO_M_FLAG | BL_OBJECT_INFO_D_FLAG,
  BL_OBJECT_INFO_MDR_FLAGS = BL_OBJECT_INFO_M_FLAG | BL_OBJECT_INFO_D_FLAG | BL_OBJECT_INFO_R_FLAG
  ,BL_OBJECT_INFO_BITS_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLObjectType BLObjectType; enum BLObjectType {
  BL_OBJECT_TYPE_RGBA = 0,
  BL_OBJECT_TYPE_RGBA32 = 1,
  BL_OBJECT_TYPE_RGBA64 = 2,
  BL_OBJECT_TYPE_NULL = 3,
  BL_OBJECT_TYPE_PATTERN = 4,
  BL_OBJECT_TYPE_GRADIENT = 5,
  BL_OBJECT_TYPE_IMAGE = 9,
  BL_OBJECT_TYPE_PATH = 10,
  BL_OBJECT_TYPE_FONT = 16,
  BL_OBJECT_TYPE_FONT_FEATURE_SETTINGS = 17,
  BL_OBJECT_TYPE_FONT_VARIATION_SETTINGS = 18,
  BL_OBJECT_TYPE_BIT_ARRAY = 25,
  BL_OBJECT_TYPE_BIT_SET = 26,
  BL_OBJECT_TYPE_BOOL = 28,
  BL_OBJECT_TYPE_INT64 = 29,
  BL_OBJECT_TYPE_UINT64 = 30,
  BL_OBJECT_TYPE_DOUBLE = 31,
  BL_OBJECT_TYPE_STRING = 32,
  BL_OBJECT_TYPE_ARRAY_OBJECT = 33,
  BL_OBJECT_TYPE_ARRAY_INT8 = 34,
  BL_OBJECT_TYPE_ARRAY_UINT8 = 35,
  BL_OBJECT_TYPE_ARRAY_INT16 = 36,
  BL_OBJECT_TYPE_ARRAY_UINT16 = 37,
  BL_OBJECT_TYPE_ARRAY_INT32 = 38,
  BL_OBJECT_TYPE_ARRAY_UINT32 = 39,
  BL_OBJECT_TYPE_ARRAY_INT64 = 40,
  BL_OBJECT_TYPE_ARRAY_UINT64 = 41,
  BL_OBJECT_TYPE_ARRAY_FLOAT32 = 42,
  BL_OBJECT_TYPE_ARRAY_FLOAT64 = 43,
  BL_OBJECT_TYPE_ARRAY_STRUCT_1 = 44,
  BL_OBJECT_TYPE_ARRAY_STRUCT_2 = 45,
  BL_OBJECT_TYPE_ARRAY_STRUCT_3 = 46,
  BL_OBJECT_TYPE_ARRAY_STRUCT_4 = 47,
  BL_OBJECT_TYPE_ARRAY_STRUCT_6 = 48,
  BL_OBJECT_TYPE_ARRAY_STRUCT_8 = 49,
  BL_OBJECT_TYPE_ARRAY_STRUCT_10 = 50,
  BL_OBJECT_TYPE_ARRAY_STRUCT_12 = 51,
  BL_OBJECT_TYPE_ARRAY_STRUCT_16 = 52,
  BL_OBJECT_TYPE_ARRAY_STRUCT_20 = 53,
  BL_OBJECT_TYPE_ARRAY_STRUCT_24 = 54,
  BL_OBJECT_TYPE_ARRAY_STRUCT_32 = 55,
  BL_OBJECT_TYPE_CONTEXT = 100,
  BL_OBJECT_TYPE_IMAGE_CODEC = 101,
  BL_OBJECT_TYPE_IMAGE_DECODER = 102,
  BL_OBJECT_TYPE_IMAGE_ENCODER = 103,
  BL_OBJECT_TYPE_FONT_FACE = 104,
  BL_OBJECT_TYPE_FONT_DATA = 105,
  BL_OBJECT_TYPE_FONT_MANAGER = 106,
  BL_OBJECT_TYPE_MIN_ARRAY = 33,
  BL_OBJECT_TYPE_MAX_ARRAY = 55,
  BL_OBJECT_TYPE_MIN_STYLE = 0,
  BL_OBJECT_TYPE_MAX_STYLE = 5,
  BL_OBJECT_TYPE_MIN_VIRTUAL = 100,
  BL_OBJECT_TYPE_MAX_VIRTUAL = 127,
  BL_OBJECT_TYPE_MAX_VALUE = 127
  ,BL_OBJECT_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
struct BLObjectInfo {
  uint32_t bits;
};
union BLObjectDetail {
  BLObjectImpl* impl;
  char char_data[16];
  int8_t i8_data[16];
  uint8_t u8_data[16];
  int16_t i16_data[8];
  uint16_t u16_data[8];
  int32_t i32_data[4];
  uint32_t u32_data[4];
  int64_t i64_data[2];
  uint64_t u64_data[2];
  float f32_data[4];
  double f64_data[2];
  BLRgba rgba;
  BLRgba32 rgba32;
  BLRgba64 rgba64;
  struct {
    uint32_t u32_data_overlap[2];
    uint32_t impl_payload;
    BLObjectInfo info;
  };
};
typedef void (__cdecl* BLDestroyExternalDataFunc)(void* impl, void* externalData, void* userData) ;
struct BLObjectVirtBase {
  BLResult (__cdecl* destroy)(BLObjectImpl* impl) ;
  BLResult (__cdecl* getProperty)(const BLObjectImpl* impl, const char* name, size_t nameSize, BLVarCore* valueOut) ;
  BLResult (__cdecl* setProperty)(BLObjectImpl* impl, const char* name, size_t nameSize, const BLVarCore* value) ;
};
struct BLObjectVirt {
  BLObjectVirtBase base;
};
struct BLObjectCore {
  BLObjectDetail _d;
};
__declspec(dllimport) BLResult __cdecl blObjectAllocImpl(BLObjectCore* self, uint32_t objectInfo, size_t implSize) ;
__declspec(dllimport) BLResult __cdecl blObjectAllocImplAligned(BLObjectCore* self, uint32_t objectInfo, size_t implSize, size_t implAlignment) ;
__declspec(dllimport) BLResult __cdecl blObjectAllocImplExternal(BLObjectCore* self, uint32_t objectInfo, size_t implSize, _Bool immutable, BLDestroyExternalDataFunc destroyFunc, void* userData) ;
__declspec(dllimport) BLResult __cdecl blObjectFreeImpl(BLObjectImpl* impl) ;
__declspec(dllimport) BLResult __cdecl blObjectInitMove(BLUnknown* self, BLUnknown* other) ;
__declspec(dllimport) BLResult __cdecl blObjectInitWeak(BLUnknown* self, const BLUnknown* other) ;
__declspec(dllimport) BLResult __cdecl blObjectReset(BLUnknown* self) ;
__declspec(dllimport) BLResult __cdecl blObjectAssignMove(BLUnknown* self, BLUnknown* other) ;
__declspec(dllimport) BLResult __cdecl blObjectAssignWeak(BLUnknown* self, const BLUnknown* other) ;
__declspec(dllimport) BLResult __cdecl blObjectGetProperty(const BLUnknown* self, const char* name, size_t nameSize, BLVarCore* valueOut) ;
__declspec(dllimport) BLResult __cdecl blObjectGetPropertyBool(const BLUnknown* self, const char* name, size_t nameSize, _Bool* valueOut) ;
__declspec(dllimport) BLResult __cdecl blObjectGetPropertyInt32(const BLUnknown* self, const char* name, size_t nameSize, int32_t* valueOut) ;
__declspec(dllimport) BLResult __cdecl blObjectGetPropertyInt64(const BLUnknown* self, const char* name, size_t nameSize, int64_t* valueOut) ;
__declspec(dllimport) BLResult __cdecl blObjectGetPropertyUInt32(const BLUnknown* self, const char* name, size_t nameSize, uint32_t* valueOut) ;
__declspec(dllimport) BLResult __cdecl blObjectGetPropertyUInt64(const BLUnknown* self, const char* name, size_t nameSize, uint64_t* valueOut) ;
__declspec(dllimport) BLResult __cdecl blObjectGetPropertyDouble(const BLUnknown* self, const char* name, size_t nameSize, double* valueOut) ;
__declspec(dllimport) BLResult __cdecl blObjectSetProperty(BLUnknown* self, const char* name, size_t nameSize, const BLUnknown* value) ;
__declspec(dllimport) BLResult __cdecl blObjectSetPropertyBool(BLUnknown* self, const char* name, size_t nameSize, _Bool value) ;
__declspec(dllimport) BLResult __cdecl blObjectSetPropertyInt32(BLUnknown* self, const char* name, size_t nameSize, int32_t value) ;
__declspec(dllimport) BLResult __cdecl blObjectSetPropertyInt64(BLUnknown* self, const char* name, size_t nameSize, int64_t value) ;
__declspec(dllimport) BLResult __cdecl blObjectSetPropertyUInt32(BLUnknown* self, const char* name, size_t nameSize, uint32_t value) ;
__declspec(dllimport) BLResult __cdecl blObjectSetPropertyUInt64(BLUnknown* self, const char* name, size_t nameSize, uint64_t value) ;
__declspec(dllimport) BLResult __cdecl blObjectSetPropertyDouble(BLUnknown* self, const char* name, size_t nameSize, double value) ;
struct BLArrayCore  {
  BLObjectDetail _d;
};
struct BLArrayImpl  {
  void* data;
  size_t size;
  size_t capacity;
};
__declspec(dllimport) BLResult __cdecl blArrayInit(BLArrayCore* self, BLObjectType arrayType) ;
__declspec(dllimport) BLResult __cdecl blArrayInitMove(BLArrayCore* self, BLArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blArrayInitWeak(BLArrayCore* self, const BLArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blArrayDestroy(BLArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blArrayReset(BLArrayCore* self) ;
__declspec(dllimport) size_t __cdecl blArrayGetSize(const BLArrayCore* self)  ;
__declspec(dllimport) size_t __cdecl blArrayGetCapacity(const BLArrayCore* self)  ;
__declspec(dllimport) size_t __cdecl blArrayGetItemSize(BLArrayCore* self)  ;
__declspec(dllimport) const void* __cdecl blArrayGetData(const BLArrayCore* self)  ;
__declspec(dllimport) BLResult __cdecl blArrayClear(BLArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blArrayShrink(BLArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blArrayReserve(BLArrayCore* self, size_t n) ;
__declspec(dllimport) BLResult __cdecl blArrayResize(BLArrayCore* self, size_t n, const void* fill) ;
__declspec(dllimport) BLResult __cdecl blArrayMakeMutable(BLArrayCore* self, void** dataOut) ;
__declspec(dllimport) BLResult __cdecl blArrayModifyOp(BLArrayCore* self, BLModifyOp op, size_t n, void** dataOut) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertOp(BLArrayCore* self, size_t index, size_t n, void** dataOut) ;
__declspec(dllimport) BLResult __cdecl blArrayAssignMove(BLArrayCore* self, BLArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blArrayAssignWeak(BLArrayCore* self, const BLArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blArrayAssignDeep(BLArrayCore* self, const BLArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blArrayAssignData(BLArrayCore* self, const void* data, size_t n) ;
__declspec(dllimport) BLResult __cdecl blArrayAssignExternalData(BLArrayCore* self, void* data, size_t size, size_t capacity, BLDataAccessFlags dataAccessFlags, BLDestroyExternalDataFunc destroyFunc, void* userData) ;
__declspec(dllimport) BLResult __cdecl blArrayAppendU8(BLArrayCore* self, uint8_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayAppendU16(BLArrayCore* self, uint16_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayAppendU32(BLArrayCore* self, uint32_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayAppendU64(BLArrayCore* self, uint64_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayAppendF32(BLArrayCore* self, float value) ;
__declspec(dllimport) BLResult __cdecl blArrayAppendF64(BLArrayCore* self, double value) ;
__declspec(dllimport) BLResult __cdecl blArrayAppendItem(BLArrayCore* self, const void* item) ;
__declspec(dllimport) BLResult __cdecl blArrayAppendData(BLArrayCore* self, const void* data, size_t n) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertU8(BLArrayCore* self, size_t index, uint8_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertU16(BLArrayCore* self, size_t index, uint16_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertU32(BLArrayCore* self, size_t index, uint32_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertU64(BLArrayCore* self, size_t index, uint64_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertF32(BLArrayCore* self, size_t index, float value) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertF64(BLArrayCore* self, size_t index, double value) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertItem(BLArrayCore* self, size_t index, const void* item) ;
__declspec(dllimport) BLResult __cdecl blArrayInsertData(BLArrayCore* self, size_t index, const void* data, size_t n) ;
__declspec(dllimport) BLResult __cdecl blArrayReplaceU8(BLArrayCore* self, size_t index, uint8_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayReplaceU16(BLArrayCore* self, size_t index, uint16_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayReplaceU32(BLArrayCore* self, size_t index, uint32_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayReplaceU64(BLArrayCore* self, size_t index, uint64_t value) ;
__declspec(dllimport) BLResult __cdecl blArrayReplaceF32(BLArrayCore* self, size_t index, float value) ;
__declspec(dllimport) BLResult __cdecl blArrayReplaceF64(BLArrayCore* self, size_t index, double value) ;
__declspec(dllimport) BLResult __cdecl blArrayReplaceItem(BLArrayCore* self, size_t index, const void* item) ;
__declspec(dllimport) BLResult __cdecl blArrayReplaceData(BLArrayCore* self, size_t rStart, size_t rEnd, const void* data, size_t n) ;
__declspec(dllimport) BLResult __cdecl blArrayRemoveIndex(BLArrayCore* self, size_t index) ;
__declspec(dllimport) BLResult __cdecl blArrayRemoveRange(BLArrayCore* self, size_t rStart, size_t rEnd) ;
__declspec(dllimport) _Bool __cdecl blArrayEquals(const BLArrayCore* a, const BLArrayCore* b)  ;
struct BLBitArrayCore  {
  BLObjectDetail _d;
};
struct BLBitArrayImpl  {
  uint32_t size;
  uint32_t capacity;
};
__declspec(dllimport) BLResult __cdecl blBitArrayInit(BLBitArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitArrayInitMove(BLBitArrayCore* self, BLBitArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitArrayInitWeak(BLBitArrayCore* self, const BLBitArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitArrayDestroy(BLBitArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitArrayReset(BLBitArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitArrayAssignMove(BLBitArrayCore* self, BLBitArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitArrayAssignWeak(BLBitArrayCore* self, const BLBitArrayCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitArrayAssignWords(BLBitArrayCore* self, const uint32_t* wordData, uint32_t wordCount) ;
__declspec(dllimport) _Bool __cdecl blBitArrayIsEmpty(const BLBitArrayCore* self) ;
__declspec(dllimport) uint32_t __cdecl blBitArrayGetSize(const BLBitArrayCore* self) ;
__declspec(dllimport) uint32_t __cdecl blBitArrayGetWordCount(const BLBitArrayCore* self) ;
__declspec(dllimport) uint32_t __cdecl blBitArrayGetCapacity(const BLBitArrayCore* self) ;
__declspec(dllimport) const uint32_t* __cdecl blBitArrayGetData(const BLBitArrayCore* self) ;
__declspec(dllimport) uint32_t __cdecl blBitArrayGetCardinality(const BLBitArrayCore* self) ;
__declspec(dllimport) uint32_t __cdecl blBitArrayGetCardinalityInRange(const BLBitArrayCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) _Bool __cdecl blBitArrayHasBit(const BLBitArrayCore* self, uint32_t bitIndex) ;
__declspec(dllimport) _Bool __cdecl blBitArrayHasBitsInRange(const BLBitArrayCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) _Bool __cdecl blBitArraySubsumes(const BLBitArrayCore* a, const BLBitArrayCore* b) ;
__declspec(dllimport) _Bool __cdecl blBitArrayIntersects(const BLBitArrayCore* a, const BLBitArrayCore* b) ;
__declspec(dllimport) _Bool __cdecl blBitArrayGetRange(const BLBitArrayCore* self, uint32_t* startOut, uint32_t* endOut) ;
__declspec(dllimport) _Bool __cdecl blBitArrayEquals(const BLBitArrayCore* a, const BLBitArrayCore* b) ;
__declspec(dllimport) int __cdecl blBitArrayCompare(const BLBitArrayCore* a, const BLBitArrayCore* b) ;
__declspec(dllimport) BLResult __cdecl blBitArrayClear(BLBitArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitArrayResize(BLBitArrayCore* self, uint32_t nBits) ;
__declspec(dllimport) BLResult __cdecl blBitArrayReserve(BLBitArrayCore* self, uint32_t nBits) ;
__declspec(dllimport) BLResult __cdecl blBitArrayShrink(BLBitArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitArraySetBit(BLBitArrayCore* self, uint32_t bitIndex) ;
__declspec(dllimport) BLResult __cdecl blBitArrayFillRange(BLBitArrayCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) BLResult __cdecl blBitArrayFillWords(BLBitArrayCore* self, uint32_t bitIndex, const uint32_t* wordData, uint32_t wordCount) ;
__declspec(dllimport) BLResult __cdecl blBitArrayClearBit(BLBitArrayCore* self, uint32_t bitIndex) ;
__declspec(dllimport) BLResult __cdecl blBitArrayClearRange(BLBitArrayCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) BLResult __cdecl blBitArrayClearWord(BLBitArrayCore* self, uint32_t bitIndex, uint32_t wordValue) ;
__declspec(dllimport) BLResult __cdecl blBitArrayClearWords(BLBitArrayCore* self, uint32_t bitIndex, const uint32_t* wordData, uint32_t wordCount) ;
__declspec(dllimport) BLResult __cdecl blBitArrayReplaceOp(BLBitArrayCore* self, uint32_t nBits, uint32_t** dataOut) ;
__declspec(dllimport) BLResult __cdecl blBitArrayReplaceBit(BLBitArrayCore* self, uint32_t bitIndex, _Bool bitValue) ;
__declspec(dllimport) BLResult __cdecl blBitArrayReplaceWord(BLBitArrayCore* self, uint32_t bitIndex, uint32_t wordValue) ;
__declspec(dllimport) BLResult __cdecl blBitArrayReplaceWords(BLBitArrayCore* self, uint32_t bitIndex, const uint32_t* wordData, uint32_t wordCount) ;
__declspec(dllimport) BLResult __cdecl blBitArrayAppendBit(BLBitArrayCore* self, _Bool bitValue) ;
__declspec(dllimport) BLResult __cdecl blBitArrayAppendWord(BLBitArrayCore* self, uint32_t wordValue) ;
__declspec(dllimport) BLResult __cdecl blBitArrayAppendWords(BLBitArrayCore* self, const uint32_t* wordData, uint32_t wordCount) ;
typedef enum BLBitSetConstants BLBitSetConstants; enum BLBitSetConstants {
  BL_BIT_SET_INVALID_INDEX = 0xFFFFFFFFu,
  BL_BIT_SET_RANGE_MASK = 0x80000000u,
  BL_BIT_SET_SEGMENT_WORD_COUNT = 4u
};
struct BLBitSetSegment {
  uint32_t _startWord;
  uint32_t _data[BL_BIT_SET_SEGMENT_WORD_COUNT];
};
struct BLBitSetData {
  const BLBitSetSegment* segmentData;
  uint32_t segmentCount;
  BLBitSetSegment ssoSegments[3];
};
__declspec(dllimport) BLResult __cdecl blBitSetInit(BLBitSetCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitSetInitMove(BLBitSetCore* self, BLBitSetCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitSetInitWeak(BLBitSetCore* self, const BLBitSetCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitSetInitRange(BLBitSetCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) BLResult __cdecl blBitSetDestroy(BLBitSetCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitSetReset(BLBitSetCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitSetAssignMove(BLBitSetCore* self, BLBitSetCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitSetAssignWeak(BLBitSetCore* self, const BLBitSetCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitSetAssignDeep(BLBitSetCore* self, const BLBitSetCore* other) ;
__declspec(dllimport) BLResult __cdecl blBitSetAssignRange(BLBitSetCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) BLResult __cdecl blBitSetAssignWords(BLBitSetCore* self, uint32_t startWord, const uint32_t* wordData, uint32_t wordCount) ;
__declspec(dllimport) _Bool __cdecl blBitSetIsEmpty(const BLBitSetCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitSetGetData(const BLBitSetCore* self, BLBitSetData* out) ;
__declspec(dllimport) uint32_t __cdecl blBitSetGetSegmentCount(const BLBitSetCore* self)  ;
__declspec(dllimport) uint32_t __cdecl blBitSetGetSegmentCapacity(const BLBitSetCore* self)  ;
__declspec(dllimport) uint32_t __cdecl blBitSetGetCardinality(const BLBitSetCore* self) ;
__declspec(dllimport) uint32_t __cdecl blBitSetGetCardinalityInRange(const BLBitSetCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) _Bool __cdecl blBitSetHasBit(const BLBitSetCore* self, uint32_t bitIndex) ;
__declspec(dllimport) _Bool __cdecl blBitSetHasBitsInRange(const BLBitSetCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) _Bool __cdecl blBitSetSubsumes(const BLBitSetCore* a, const BLBitSetCore* b) ;
__declspec(dllimport) _Bool __cdecl blBitSetIntersects(const BLBitSetCore* a, const BLBitSetCore* b) ;
__declspec(dllimport) _Bool __cdecl blBitSetGetRange(const BLBitSetCore* self, uint32_t* startOut, uint32_t* endOut) ;
__declspec(dllimport) _Bool __cdecl blBitSetEquals(const BLBitSetCore* a, const BLBitSetCore* b) ;
__declspec(dllimport) int __cdecl blBitSetCompare(const BLBitSetCore* a, const BLBitSetCore* b) ;
__declspec(dllimport) BLResult __cdecl blBitSetClear(BLBitSetCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitSetShrink(BLBitSetCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitSetOptimize(BLBitSetCore* self) ;
__declspec(dllimport) BLResult __cdecl blBitSetChop(BLBitSetCore* self, uint32_t startBit, uint32_t endBit) ;
__declspec(dllimport) BLResult __cdecl blBitSetAddBit(BLBitSetCore* self, uint32_t bitIndex) ;
__declspec(dllimport) BLResult __cdecl blBitSetAddRange(BLBitSetCore* self, uint32_t rangeStartBit, uint32_t rangeEndBit) ;
__declspec(dllimport) BLResult __cdecl blBitSetAddWords(BLBitSetCore* self, uint32_t startWord, const uint32_t* wordData, uint32_t wordCount) ;
__declspec(dllimport) BLResult __cdecl blBitSetClearBit(BLBitSetCore* self, uint32_t bitIndex) ;
__declspec(dllimport) BLResult __cdecl blBitSetClearRange(BLBitSetCore* self, uint32_t rangeStartBit, uint32_t rangeEndBit) ;
__declspec(dllimport) BLResult __cdecl blBitSetBuilderCommit(BLBitSetCore* self, BLBitSetBuilderCore* builder, uint32_t newAreaIndex) ;
__declspec(dllimport) BLResult __cdecl blBitSetBuilderAddRange(BLBitSetCore* self, BLBitSetBuilderCore* builder, uint32_t startBit, uint32_t endBit) ;
struct BLBitSetCore  {
  BLObjectDetail _d;
};
struct BLBitSetBuilderCore {
  uint32_t _areaShift;
  uint32_t _areaIndex;
};
struct BLBitSetImpl  {
  uint32_t segmentCount;
  uint32_t segmentCapacity;
};
typedef enum BLFileInfoFlags BLFileInfoFlags; enum BLFileInfoFlags {
  BL_FILE_INFO_OWNER_R = 0x00000100u,
  BL_FILE_INFO_OWNER_W = 0x00000080u,
  BL_FILE_INFO_OWNER_X = 0x00000040u,
  BL_FILE_INFO_OWNER_MASK = 0x000001C0u,
  BL_FILE_INFO_GROUP_R = 0x00000020u,
  BL_FILE_INFO_GROUP_W = 0x00000010u,
  BL_FILE_INFO_GROUP_X = 0x00000008u,
  BL_FILE_INFO_GROUP_MASK = 0x00000038u,
  BL_FILE_INFO_OTHER_R = 0x00000004u,
  BL_FILE_INFO_OTHER_W = 0x00000002u,
  BL_FILE_INFO_OTHER_X = 0x00000001u,
  BL_FILE_INFO_OTHER_MASK = 0x00000007u,
  BL_FILE_INFO_SUID = 0x00000800u,
  BL_FILE_INFO_SGID = 0x00000400u,
  BL_FILE_INFO_PERMISSIONS_MASK = 0x00000FFFu,
  BL_FILE_INFO_REGULAR = 0x00010000u,
  BL_FILE_INFO_DIRECTORY = 0x00020000u,
  BL_FILE_INFO_SYMLINK = 0x00040000u,
  BL_FILE_INFO_CHAR_DEVICE = 0x00100000u,
  BL_FILE_INFO_BLOCK_DEVICE = 0x00200000u,
  BL_FILE_INFO_FIFO = 0x00400000u,
  BL_FILE_INFO_SOCKET = 0x00800000u,
  BL_FILE_INFO_HIDDEN = 0x01000000u,
  BL_FILE_INFO_EXECUTABLE = 0x02000000u,
  BL_FILE_INFO_ARCHIVE = 0x04000000u,
  BL_FILE_INFO_SYSTEM = 0x08000000u,
  BL_FILE_INFO_VALID = 0x80000000u
  ,BL_FILE_INFO_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFileOpenFlags BLFileOpenFlags; enum BLFileOpenFlags {
  BL_FILE_OPEN_NO_FLAGS = 0u,
  BL_FILE_OPEN_READ = 0x00000001u,
  BL_FILE_OPEN_WRITE = 0x00000002u,
  BL_FILE_OPEN_RW = 0x00000003u,
  BL_FILE_OPEN_CREATE = 0x00000004u,
  BL_FILE_OPEN_DELETE = 0x00000008u,
  BL_FILE_OPEN_TRUNCATE = 0x00000010u,
  BL_FILE_OPEN_READ_EXCLUSIVE = 0x10000000u,
  BL_FILE_OPEN_WRITE_EXCLUSIVE = 0x20000000u,
  BL_FILE_OPEN_RW_EXCLUSIVE = 0x30000000u,
  BL_FILE_OPEN_CREATE_EXCLUSIVE = 0x40000000u,
  BL_FILE_OPEN_DELETE_EXCLUSIVE = 0x80000000u
  ,BL_FILE_OPEN_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFileSeekType BLFileSeekType; enum BLFileSeekType {
  BL_FILE_SEEK_SET = 0,
  BL_FILE_SEEK_CUR = 1,
  BL_FILE_SEEK_END = 2,
  BL_FILE_SEEK_MAX_VALUE = 3
  ,BL_FILE_SEEK_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFileReadFlags BLFileReadFlags; enum BLFileReadFlags {
  BL_FILE_READ_NO_FLAGS = 0u,
  BL_FILE_READ_MMAP_ENABLED = 0x00000001u,
  BL_FILE_READ_MMAP_AVOID_SMALL = 0x00000002u,
  BL_FILE_READ_MMAP_NO_FALLBACK = 0x00000008u
  ,BL_FILE_READ_FORCE_UINT = 0xFFFFFFFFu
};
struct BLFileCore {
  intptr_t handle;
};
struct BLFileInfo {
  uint64_t size;
  int64_t modifiedTime;
  BLFileInfoFlags flags;
  uint32_t uid;
  uint32_t gid;
  uint32_t reserved[5];
};
__declspec(dllimport) BLResult __cdecl blFileInit(BLFileCore* self) ;
__declspec(dllimport) BLResult __cdecl blFileReset(BLFileCore* self) ;
__declspec(dllimport) BLResult __cdecl blFileOpen(BLFileCore* self, const char* fileName, BLFileOpenFlags openFlags) ;
__declspec(dllimport) BLResult __cdecl blFileClose(BLFileCore* self) ;
__declspec(dllimport) BLResult __cdecl blFileSeek(BLFileCore* self, int64_t offset, BLFileSeekType seekType, int64_t* positionOut) ;
__declspec(dllimport) BLResult __cdecl blFileRead(BLFileCore* self, void* buffer, size_t n, size_t* bytesReadOut) ;
__declspec(dllimport) BLResult __cdecl blFileWrite(BLFileCore* self, const void* buffer, size_t n, size_t* bytesWrittenOut) ;
__declspec(dllimport) BLResult __cdecl blFileTruncate(BLFileCore* self, int64_t maxSize) ;
__declspec(dllimport) BLResult __cdecl blFileGetInfo(BLFileCore* self, BLFileInfo* infoOut) ;
__declspec(dllimport) BLResult __cdecl blFileGetSize(BLFileCore* self, uint64_t* fileSizeOut) ;
__declspec(dllimport) BLResult __cdecl blFileSystemGetInfo(const char* fileName, BLFileInfo* infoOut) ;
__declspec(dllimport) BLResult __cdecl blFileSystemReadFile(const char* fileName, BLArrayCore* dst, size_t maxSize, BLFileReadFlags readFlags) ;
__declspec(dllimport) BLResult __cdecl blFileSystemWriteFile(const char* fileName, const void* data, size_t size, size_t* bytesWrittenOut) ;
typedef enum BLGeometryDirection BLGeometryDirection; enum BLGeometryDirection {
  BL_GEOMETRY_DIRECTION_NONE = 0,
  BL_GEOMETRY_DIRECTION_CW = 1,
  BL_GEOMETRY_DIRECTION_CCW = 2
  ,BL_GEOMETRY_DIRECTION_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLGeometryType BLGeometryType; enum BLGeometryType {
  BL_GEOMETRY_TYPE_NONE = 0,
  BL_GEOMETRY_TYPE_BOXI = 1,
  BL_GEOMETRY_TYPE_BOXD = 2,
  BL_GEOMETRY_TYPE_RECTI = 3,
  BL_GEOMETRY_TYPE_RECTD = 4,
  BL_GEOMETRY_TYPE_CIRCLE = 5,
  BL_GEOMETRY_TYPE_ELLIPSE = 6,
  BL_GEOMETRY_TYPE_ROUND_RECT = 7,
  BL_GEOMETRY_TYPE_ARC = 8,
  BL_GEOMETRY_TYPE_CHORD = 9,
  BL_GEOMETRY_TYPE_PIE = 10,
  BL_GEOMETRY_TYPE_LINE = 11,
  BL_GEOMETRY_TYPE_TRIANGLE = 12,
  BL_GEOMETRY_TYPE_POLYLINEI = 13,
  BL_GEOMETRY_TYPE_POLYLINED = 14,
  BL_GEOMETRY_TYPE_POLYGONI = 15,
  BL_GEOMETRY_TYPE_POLYGOND = 16,
  BL_GEOMETRY_TYPE_ARRAY_VIEW_BOXI = 17,
  BL_GEOMETRY_TYPE_ARRAY_VIEW_BOXD = 18,
  BL_GEOMETRY_TYPE_ARRAY_VIEW_RECTI = 19,
  BL_GEOMETRY_TYPE_ARRAY_VIEW_RECTD = 20,
  BL_GEOMETRY_TYPE_PATH = 21,
  BL_GEOMETRY_TYPE_MAX_VALUE = 21,
  BL_GEOMETRY_TYPE_SIMPLE_LAST = BL_GEOMETRY_TYPE_TRIANGLE
  ,BL_GEOMETRY_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFillRule BLFillRule; enum BLFillRule {
  BL_FILL_RULE_NON_ZERO = 0,
  BL_FILL_RULE_EVEN_ODD = 1,
  BL_FILL_RULE_MAX_VALUE = 1
  ,BL_FILL_RULE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLHitTest BLHitTest; enum BLHitTest {
  BL_HIT_TEST_IN = 0,
  BL_HIT_TEST_PART = 1,
  BL_HIT_TEST_OUT = 2,
  BL_HIT_TEST_INVALID = 0xFFFFFFFFu
  ,BL_HIT_TEST_FORCE_UINT = 0xFFFFFFFFu
};
struct BLPointI {
  int x;
  int y;
};
struct BLSizeI {
  int w;
  int h;
};
struct BLBoxI {
  int x0;
  int y0;
  int x1;
  int y1;
};
struct BLRectI {
  int x;
  int y;
  int w;
  int h;
};
struct BLPoint {
  double x;
  double y;
};
struct BLSize {
  double w;
  double h;
};
struct BLBox {
  double x0;
  double y0;
  double x1;
  double y1;
};
struct BLRect {
  double x;
  double y;
  double w;
  double h;
};
struct BLLine {
  double x0, y0;
  double x1, y1;
};
struct BLTriangle {
  double x0, y0;
  double x1, y1;
  double x2, y2;
};
struct BLRoundRect {
  double x, y, w, h;
  double rx, ry;
};
struct BLCircle {
  double cx, cy;
  double r;
};
struct BLEllipse {
  double cx, cy;
  double rx, ry;
};
struct BLArc {
  double cx, cy;
  double rx, ry;
  double start;
  double sweep;
};
typedef enum BLOrientation BLOrientation; enum BLOrientation {
  BL_ORIENTATION_HORIZONTAL = 0,
  BL_ORIENTATION_VERTICAL = 1,
  BL_ORIENTATION_MAX_VALUE = 1
  ,BL_ORIENTATION_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFontFaceType BLFontFaceType; enum BLFontFaceType {
  BL_FONT_FACE_TYPE_NONE = 0,
  BL_FONT_FACE_TYPE_OPENTYPE = 1,
  BL_FONT_FACE_TYPE_MAX_VALUE = 1
  ,BL_FONT_FACE_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFontStretch BLFontStretch; enum BLFontStretch {
  BL_FONT_STRETCH_ULTRA_CONDENSED = 1,
  BL_FONT_STRETCH_EXTRA_CONDENSED = 2,
  BL_FONT_STRETCH_CONDENSED = 3,
  BL_FONT_STRETCH_SEMI_CONDENSED = 4,
  BL_FONT_STRETCH_NORMAL = 5,
  BL_FONT_STRETCH_SEMI_EXPANDED = 6,
  BL_FONT_STRETCH_EXPANDED = 7,
  BL_FONT_STRETCH_EXTRA_EXPANDED = 8,
  BL_FONT_STRETCH_ULTRA_EXPANDED = 9,
  BL_FONT_STRETCH_MAX_VALUE = 9
  ,BL_FONT_STRETCH_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFontStyle BLFontStyle; enum BLFontStyle {
  BL_FONT_STYLE_NORMAL = 0,
  BL_FONT_STYLE_OBLIQUE = 1,
  BL_FONT_STYLE_ITALIC = 2,
  BL_FONT_STYLE_MAX_VALUE = 2
  ,BL_FONT_STYLE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFontWeight BLFontWeight; enum BLFontWeight {
  BL_FONT_WEIGHT_THIN = 100,
  BL_FONT_WEIGHT_EXTRA_LIGHT = 200,
  BL_FONT_WEIGHT_LIGHT = 300,
  BL_FONT_WEIGHT_SEMI_LIGHT = 350,
  BL_FONT_WEIGHT_NORMAL = 400,
  BL_FONT_WEIGHT_MEDIUM = 500,
  BL_FONT_WEIGHT_SEMI_BOLD = 600,
  BL_FONT_WEIGHT_BOLD = 700,
  BL_FONT_WEIGHT_EXTRA_BOLD = 800,
  BL_FONT_WEIGHT_BLACK = 900,
  BL_FONT_WEIGHT_EXTRA_BLACK = 950
  ,BL_FONT_WEIGHT_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFontStringId BLFontStringId; enum BLFontStringId {
  BL_FONT_STRING_ID_COPYRIGHT_NOTICE = 0,
  BL_FONT_STRING_ID_FAMILY_NAME = 1,
  BL_FONT_STRING_ID_SUBFAMILY_NAME = 2,
  BL_FONT_STRING_ID_UNIQUE_IDENTIFIER = 3,
  BL_FONT_STRING_ID_FULL_NAME = 4,
  BL_FONT_STRING_ID_VERSION_STRING = 5,
  BL_FONT_STRING_ID_POST_SCRIPT_NAME = 6,
  BL_FONT_STRING_ID_TRADEMARK = 7,
  BL_FONT_STRING_ID_MANUFACTURER_NAME = 8,
  BL_FONT_STRING_ID_DESIGNER_NAME = 9,
  BL_FONT_STRING_ID_DESCRIPTION = 10,
  BL_FONT_STRING_ID_VENDOR_URL = 11,
  BL_FONT_STRING_ID_DESIGNER_URL = 12,
  BL_FONT_STRING_ID_LICENSE_DESCRIPTION = 13,
  BL_FONT_STRING_ID_LICENSE_INFO_URL = 14,
  BL_FONT_STRING_ID_RESERVED = 15,
  BL_FONT_STRING_ID_TYPOGRAPHIC_FAMILY_NAME = 16,
  BL_FONT_STRING_ID_TYPOGRAPHIC_SUBFAMILY_NAME = 17,
  BL_FONT_STRING_ID_COMPATIBLE_FULL_NAME = 18,
  BL_FONT_STRING_ID_SAMPLE_TEXT = 19,
  BL_FONT_STRING_ID_POST_SCRIPT_CID_NAME = 20,
  BL_FONT_STRING_ID_WWS_FAMILY_NAME = 21,
  BL_FONT_STRING_ID_WWS_SUBFAMILY_NAME = 22,
  BL_FONT_STRING_ID_LIGHT_BACKGROUND_PALETTE = 23,
  BL_FONT_STRING_ID_DARK_BACKGROUND_PALETTE = 24,
  BL_FONT_STRING_ID_VARIATIONS_POST_SCRIPT_PREFIX = 25,
  BL_FONT_STRING_ID_COMMON_MAX_VALUE = 26,
  BL_FONT_STRING_ID_CUSTOM_START_INDEX = 255
  ,BL_FONT_STRING_ID_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFontUnicodeCoverageIndex BLFontUnicodeCoverageIndex; enum BLFontUnicodeCoverageIndex {
  BL_FONT_UC_INDEX_BASIC_LATIN,
  BL_FONT_UC_INDEX_LATIN1_SUPPLEMENT,
  BL_FONT_UC_INDEX_LATIN_EXTENDED_A,
  BL_FONT_UC_INDEX_LATIN_EXTENDED_B,
  BL_FONT_UC_INDEX_IPA_EXTENSIONS,
  BL_FONT_UC_INDEX_SPACING_MODIFIER_LETTERS,
  BL_FONT_UC_INDEX_COMBINING_DIACRITICAL_MARKS,
  BL_FONT_UC_INDEX_GREEK_AND_COPTIC,
  BL_FONT_UC_INDEX_COPTIC,
  BL_FONT_UC_INDEX_CYRILLIC,
  BL_FONT_UC_INDEX_ARMENIAN,
  BL_FONT_UC_INDEX_HEBREW,
  BL_FONT_UC_INDEX_VAI,
  BL_FONT_UC_INDEX_ARABIC,
  BL_FONT_UC_INDEX_NKO,
  BL_FONT_UC_INDEX_DEVANAGARI,
  BL_FONT_UC_INDEX_BENGALI,
  BL_FONT_UC_INDEX_GURMUKHI,
  BL_FONT_UC_INDEX_GUJARATI,
  BL_FONT_UC_INDEX_ORIYA,
  BL_FONT_UC_INDEX_TAMIL,
  BL_FONT_UC_INDEX_TELUGU,
  BL_FONT_UC_INDEX_KANNADA,
  BL_FONT_UC_INDEX_MALAYALAM,
  BL_FONT_UC_INDEX_THAI,
  BL_FONT_UC_INDEX_LAO,
  BL_FONT_UC_INDEX_GEORGIAN,
  BL_FONT_UC_INDEX_BALINESE,
  BL_FONT_UC_INDEX_HANGUL_JAMO,
  BL_FONT_UC_INDEX_LATIN_EXTENDED_ADDITIONAL,
  BL_FONT_UC_INDEX_GREEK_EXTENDED,
  BL_FONT_UC_INDEX_GENERAL_PUNCTUATION,
  BL_FONT_UC_INDEX_SUPERSCRIPTS_AND_SUBSCRIPTS,
  BL_FONT_UC_INDEX_CURRENCY_SYMBOLS,
  BL_FONT_UC_INDEX_COMBINING_DIACRITICAL_MARKS_FOR_SYMBOLS,
  BL_FONT_UC_INDEX_LETTERLIKE_SYMBOLS,
  BL_FONT_UC_INDEX_NUMBER_FORMS,
  BL_FONT_UC_INDEX_ARROWS,
  BL_FONT_UC_INDEX_MATHEMATICAL_OPERATORS,
  BL_FONT_UC_INDEX_MISCELLANEOUS_TECHNICAL,
  BL_FONT_UC_INDEX_CONTROL_PICTURES,
  BL_FONT_UC_INDEX_OPTICAL_CHARACTER_RECOGNITION,
  BL_FONT_UC_INDEX_ENCLOSED_ALPHANUMERICS,
  BL_FONT_UC_INDEX_BOX_DRAWING,
  BL_FONT_UC_INDEX_BLOCK_ELEMENTS,
  BL_FONT_UC_INDEX_GEOMETRIC_SHAPES,
  BL_FONT_UC_INDEX_MISCELLANEOUS_SYMBOLS,
  BL_FONT_UC_INDEX_DINGBATS,
  BL_FONT_UC_INDEX_CJK_SYMBOLS_AND_PUNCTUATION,
  BL_FONT_UC_INDEX_HIRAGANA,
  BL_FONT_UC_INDEX_KATAKANA,
  BL_FONT_UC_INDEX_BOPOMOFO,
  BL_FONT_UC_INDEX_HANGUL_COMPATIBILITY_JAMO,
  BL_FONT_UC_INDEX_PHAGS_PA,
  BL_FONT_UC_INDEX_ENCLOSED_CJK_LETTERS_AND_MONTHS,
  BL_FONT_UC_INDEX_CJK_COMPATIBILITY,
  BL_FONT_UC_INDEX_HANGUL_SYLLABLES,
  BL_FONT_UC_INDEX_NON_PLANE,
  BL_FONT_UC_INDEX_PHOENICIAN,
  BL_FONT_UC_INDEX_CJK_UNIFIED_IDEOGRAPHS,
  BL_FONT_UC_INDEX_PRIVATE_USE_PLANE0,
  BL_FONT_UC_INDEX_CJK_STROKES,
  BL_FONT_UC_INDEX_ALPHABETIC_PRESENTATION_FORMS,
  BL_FONT_UC_INDEX_ARABIC_PRESENTATION_FORMS_A,
  BL_FONT_UC_INDEX_COMBINING_HALF_MARKS,
  BL_FONT_UC_INDEX_VERTICAL_FORMS,
  BL_FONT_UC_INDEX_SMALL_FORM_VARIANTS,
  BL_FONT_UC_INDEX_ARABIC_PRESENTATION_FORMS_B,
  BL_FONT_UC_INDEX_HALFWIDTH_AND_FULLWIDTH_FORMS,
  BL_FONT_UC_INDEX_SPECIALS,
  BL_FONT_UC_INDEX_TIBETAN,
  BL_FONT_UC_INDEX_SYRIAC,
  BL_FONT_UC_INDEX_THAANA,
  BL_FONT_UC_INDEX_SINHALA,
  BL_FONT_UC_INDEX_MYANMAR,
  BL_FONT_UC_INDEX_ETHIOPIC,
  BL_FONT_UC_INDEX_CHEROKEE,
  BL_FONT_UC_INDEX_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS,
  BL_FONT_UC_INDEX_OGHAM,
  BL_FONT_UC_INDEX_RUNIC,
  BL_FONT_UC_INDEX_KHMER,
  BL_FONT_UC_INDEX_MONGOLIAN,
  BL_FONT_UC_INDEX_BRAILLE_PATTERNS,
  BL_FONT_UC_INDEX_YI_SYLLABLES_AND_RADICALS,
  BL_FONT_UC_INDEX_TAGALOG_HANUNOO_BUHID_TAGBANWA,
  BL_FONT_UC_INDEX_OLD_ITALIC,
  BL_FONT_UC_INDEX_GOTHIC,
  BL_FONT_UC_INDEX_DESERET,
  BL_FONT_UC_INDEX_MUSICAL_SYMBOLS,
  BL_FONT_UC_INDEX_MATHEMATICAL_ALPHANUMERIC_SYMBOLS,
  BL_FONT_UC_INDEX_PRIVATE_USE_PLANE_15_16,
  BL_FONT_UC_INDEX_VARIATION_SELECTORS,
  BL_FONT_UC_INDEX_TAGS,
  BL_FONT_UC_INDEX_LIMBU,
  BL_FONT_UC_INDEX_TAI_LE,
  BL_FONT_UC_INDEX_NEW_TAI_LUE,
  BL_FONT_UC_INDEX_BUGINESE,
  BL_FONT_UC_INDEX_GLAGOLITIC,
  BL_FONT_UC_INDEX_TIFINAGH,
  BL_FONT_UC_INDEX_YIJING_HEXAGRAM_SYMBOLS,
  BL_FONT_UC_INDEX_SYLOTI_NAGRI,
  BL_FONT_UC_INDEX_LINEAR_B_SYLLABARY_AND_IDEOGRAMS,
  BL_FONT_UC_INDEX_ANCIENT_GREEK_NUMBERS,
  BL_FONT_UC_INDEX_UGARITIC,
  BL_FONT_UC_INDEX_OLD_PERSIAN,
  BL_FONT_UC_INDEX_SHAVIAN,
  BL_FONT_UC_INDEX_OSMANYA,
  BL_FONT_UC_INDEX_CYPRIOT_SYLLABARY,
  BL_FONT_UC_INDEX_KHAROSHTHI,
  BL_FONT_UC_INDEX_TAI_XUAN_JING_SYMBOLS,
  BL_FONT_UC_INDEX_CUNEIFORM,
  BL_FONT_UC_INDEX_COUNTING_ROD_NUMERALS,
  BL_FONT_UC_INDEX_SUNDANESE,
  BL_FONT_UC_INDEX_LEPCHA,
  BL_FONT_UC_INDEX_OL_CHIKI,
  BL_FONT_UC_INDEX_SAURASHTRA,
  BL_FONT_UC_INDEX_KAYAH_LI,
  BL_FONT_UC_INDEX_REJANG,
  BL_FONT_UC_INDEX_CHAM,
  BL_FONT_UC_INDEX_ANCIENT_SYMBOLS,
  BL_FONT_UC_INDEX_PHAISTOS_DISC,
  BL_FONT_UC_INDEX_CARIAN_LYCIAN_LYDIAN,
  BL_FONT_UC_INDEX_DOMINO_AND_MAHJONG_TILES,
  BL_FONT_UC_INDEX_INTERNAL_USAGE_123,
  BL_FONT_UC_INDEX_INTERNAL_USAGE_124,
  BL_FONT_UC_INDEX_INTERNAL_USAGE_125,
  BL_FONT_UC_INDEX_INTERNAL_USAGE_126,
  BL_FONT_UC_INDEX_INTERNAL_USAGE_127,
  BL_FONT_UC_INDEX_MAX_VALUE
  ,BL_FONT_UC_INDEX_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLTextDirection BLTextDirection; enum BLTextDirection {
  BL_TEXT_DIRECTION_LTR = 0,
  BL_TEXT_DIRECTION_RTL = 1,
  BL_TEXT_DIRECTION_MAX_VALUE = 1
  ,BL_TEXT_DIRECTION_FORCE_UINT = 0xFFFFFFFFu
};
typedef uint32_t BLGlyphId;
struct BLGlyphInfo {
  uint32_t cluster;
  uint32_t reserved;
};
struct BLGlyphPlacement {
  BLPointI placement;
  BLPointI advance;
};
struct BLGlyphMappingState {
  size_t glyphCount;
  size_t undefinedFirst;
  size_t undefinedCount;
};
struct BLGlyphOutlineSinkInfo {
  size_t glyphIndex;
  size_t contourCount;
};
struct BLFontUnicodeCoverage {
  uint32_t data[4];
};
struct BLFontPanose {
  union {
    uint8_t data[10];
    uint8_t familyKind;
    struct {
      uint8_t familyKind;
      uint8_t serifStyle;
      uint8_t weight;
      uint8_t proportion;
      uint8_t contrast;
      uint8_t strokeVariation;
      uint8_t armStyle;
      uint8_t letterform;
      uint8_t midline;
      uint8_t xHeight;
    } text;
    struct {
      uint8_t familyKind;
      uint8_t toolKind;
      uint8_t weight;
      uint8_t spacing;
      uint8_t aspectRatio;
      uint8_t contrast;
      uint8_t topology;
      uint8_t form;
      uint8_t finials;
      uint8_t xAscent;
    } script;
    struct {
      uint8_t familyKind;
      uint8_t decorativeClass;
      uint8_t weight;
      uint8_t aspect;
      uint8_t contrast;
      uint8_t serifVariant;
      uint8_t treatment;
      uint8_t lining;
      uint8_t topology;
      uint8_t characterRange;
    } decorative;
    struct {
      uint8_t familyKind;
      uint8_t symbolKind;
      uint8_t weight;
      uint8_t spacing;
      uint8_t aspectRatioAndContrast;
      uint8_t aspectRatio94;
      uint8_t aspectRatio119;
      uint8_t aspectRatio157;
      uint8_t aspectRatio163;
      uint8_t aspectRatio211;
    } symbol;
  };
};
struct BLFontMatrix {
  union {
    double m[4];
    struct {
      double m00;
      double m01;
      double m10;
      double m11;
    };
  };
};
struct BLFontMetrics {
  float size;
  union {
    struct {
      float ascent;
      float vAscent;
      float descent;
      float vDescent;
    };
    struct {
      float ascentByOrientation[2];
      float descentByOrientation[2];
    };
  };
  float lineGap;
  float xHeight;
  float capHeight;
  float xMin;
  float yMin;
  float xMax;
  float yMax;
  float underlinePosition;
  float underlineThickness;
  float strikethroughPosition;
  float strikethroughThickness;
};
struct BLFontDesignMetrics {
  int unitsPerEm;
  int lowestPPEM;
  int lineGap;
  int xHeight;
  int capHeight;
  union {
    struct {
      int ascent;
      int vAscent;
      int descent;
      int vDescent;
      int hMinLSB;
      int vMinLSB;
      int hMinTSB;
      int vMinTSB;
      int hMaxAdvance;
      int vMaxAdvance;
    };
    struct {
      int ascentByOrientation[2];
      int descentByOrientation[2];
      int minLSBByOrientation[2];
      int minTSBByOrientation[2];
      int maxAdvanceByOrientation[2];
    };
  };
  BLBoxI glyphBoundingBox;
  int underlinePosition;
  int underlineThickness;
  int strikethroughPosition;
  int strikethroughThickness;
};
struct BLTextMetrics {
  BLPoint advance;
  BLPoint leadingBearing;
  BLPoint trailingBearing;
  BLBox boundingBox;
};
struct BLStringCore  {
  BLObjectDetail _d;
};
struct BLStringImpl  {
  size_t size;
  size_t capacity;
};
__declspec(dllimport) BLResult __cdecl blStringInit(BLStringCore* self) ;
__declspec(dllimport) BLResult __cdecl blStringInitMove(BLStringCore* self, BLStringCore* other) ;
__declspec(dllimport) BLResult __cdecl blStringInitWeak(BLStringCore* self, const BLStringCore* other) ;
__declspec(dllimport) BLResult __cdecl blStringInitWithData(BLStringCore* self, const char* str, size_t size) ;
__declspec(dllimport) BLResult __cdecl blStringDestroy(BLStringCore* self) ;
__declspec(dllimport) BLResult __cdecl blStringReset(BLStringCore* self) ;
__declspec(dllimport) const char* __cdecl blStringGetData(const BLStringCore* self)  ;
__declspec(dllimport) size_t __cdecl blStringGetSize(const BLStringCore* self)  ;
__declspec(dllimport) size_t __cdecl blStringGetCapacity(const BLStringCore* self)  ;
__declspec(dllimport) BLResult __cdecl blStringClear(BLStringCore* self) ;
__declspec(dllimport) BLResult __cdecl blStringShrink(BLStringCore* self) ;
__declspec(dllimport) BLResult __cdecl blStringReserve(BLStringCore* self, size_t n) ;
__declspec(dllimport) BLResult __cdecl blStringResize(BLStringCore* self, size_t n, char fill) ;
__declspec(dllimport) BLResult __cdecl blStringMakeMutable(BLStringCore* self, char** dataOut) ;
__declspec(dllimport) BLResult __cdecl blStringModifyOp(BLStringCore* self, BLModifyOp op, size_t n, char** dataOut) ;
__declspec(dllimport) BLResult __cdecl blStringInsertOp(BLStringCore* self, size_t index, size_t n, char** dataOut) ;
__declspec(dllimport) BLResult __cdecl blStringAssignMove(BLStringCore* self, BLStringCore* other) ;
__declspec(dllimport) BLResult __cdecl blStringAssignWeak(BLStringCore* self, const BLStringCore* other) ;
__declspec(dllimport) BLResult __cdecl blStringAssignDeep(BLStringCore* self, const BLStringCore* other) ;
__declspec(dllimport) BLResult __cdecl blStringAssignData(BLStringCore* self, const char* str, size_t n) ;
__declspec(dllimport) BLResult __cdecl blStringApplyOpChar(BLStringCore* self, BLModifyOp op, char c, size_t n) ;
__declspec(dllimport) BLResult __cdecl blStringApplyOpData(BLStringCore* self, BLModifyOp op, const char* str, size_t n) ;
__declspec(dllimport) BLResult __cdecl blStringApplyOpString(BLStringCore* self, BLModifyOp op, const BLStringCore* other) ;
__declspec(dllimport) BLResult __cdecl blStringApplyOpFormat(BLStringCore* self, BLModifyOp op, const char* fmt, ...) ;
__declspec(dllimport) BLResult __cdecl blStringApplyOpFormatV(BLStringCore* self, BLModifyOp op, const char* fmt, va_list ap) ;
__declspec(dllimport) BLResult __cdecl blStringInsertChar(BLStringCore* self, size_t index, char c, size_t n) ;
__declspec(dllimport) BLResult __cdecl blStringInsertData(BLStringCore* self, size_t index, const char* str, size_t n) ;
__declspec(dllimport) BLResult __cdecl blStringInsertString(BLStringCore* self, size_t index, const BLStringCore* other) ;
__declspec(dllimport) BLResult __cdecl blStringRemoveIndex(BLStringCore* self, size_t index) ;
__declspec(dllimport) BLResult __cdecl blStringRemoveRange(BLStringCore* self, size_t rStart, size_t rEnd) ;
__declspec(dllimport) _Bool __cdecl blStringEquals(const BLStringCore* a, const BLStringCore* b)  ;
__declspec(dllimport) _Bool __cdecl blStringEqualsData(const BLStringCore* self, const char* str, size_t n)  ;
__declspec(dllimport) int __cdecl blStringCompare(const BLStringCore* a, const BLStringCore* b)  ;
__declspec(dllimport) int __cdecl blStringCompareData(const BLStringCore* self, const char* str, size_t n)  ;
typedef enum BLFontDataFlags BLFontDataFlags; enum BLFontDataFlags {
  BL_FONT_DATA_NO_FLAGS = 0u,
  BL_FONT_DATA_FLAG_COLLECTION = 0x00000001u
  ,BL_FONT_DATA_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
struct BLFontTable {
  const uint8_t* data;
  size_t size;
};
struct BLFontDataCore  {
  BLObjectDetail _d;
};
struct BLFontDataVirt  {
  BLObjectVirtBase base;
  BLResult (__cdecl* getTableTags)(const BLFontDataImpl* impl, uint32_t faceIndex, BLArrayCore* out) ;
  size_t (__cdecl* getTables)(const BLFontDataImpl* impl, uint32_t faceIndex, BLFontTable* dst, const BLTag* tags, size_t n) ;
};
struct BLFontDataImpl  {
  const BLFontDataVirt* virt;
  uint8_t faceType;
  uint32_t faceCount;
  uint32_t flags;
};
__declspec(dllimport) BLResult __cdecl blFontDataInit(BLFontDataCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontDataInitMove(BLFontDataCore* self, BLFontDataCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontDataInitWeak(BLFontDataCore* self, const BLFontDataCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontDataDestroy(BLFontDataCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontDataReset(BLFontDataCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontDataAssignMove(BLFontDataCore* self, BLFontDataCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontDataAssignWeak(BLFontDataCore* self, const BLFontDataCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontDataCreateFromFile(BLFontDataCore* self, const char* fileName, BLFileReadFlags readFlags) ;
__declspec(dllimport) BLResult __cdecl blFontDataCreateFromDataArray(BLFontDataCore* self, const BLArrayCore* dataArray) ;
__declspec(dllimport) BLResult __cdecl blFontDataCreateFromData(BLFontDataCore* self, const void* data, size_t dataSize, BLDestroyExternalDataFunc destroyFunc, void* userData) ;
__declspec(dllimport) _Bool __cdecl blFontDataEquals(const BLFontDataCore* a, const BLFontDataCore* b) ;
__declspec(dllimport) uint32_t __cdecl blFontDataGetFaceCount(const BLFontDataCore* self) ;
__declspec(dllimport) BLFontFaceType __cdecl blFontDataGetFaceType(const BLFontDataCore* self) ;
__declspec(dllimport) BLFontDataFlags __cdecl blFontDataGetFlags(const BLFontDataCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontDataGetTableTags(const BLFontDataCore* self, uint32_t faceIndex, BLArrayCore* dst) ;
__declspec(dllimport) size_t __cdecl blFontDataGetTables(const BLFontDataCore* self, uint32_t faceIndex, BLFontTable* dst, const BLTag* tags, size_t count) ;
typedef enum BLGlyphRunFlags BLGlyphRunFlags; enum BLGlyphRunFlags {
  BL_GLYPH_RUN_NO_FLAGS = 0u,
  BL_GLYPH_RUN_FLAG_UCS4_CONTENT = 0x10000000u,
  BL_GLYPH_RUN_FLAG_INVALID_TEXT = 0x20000000u,
  BL_GLYPH_RUN_FLAG_UNDEFINED_GLYPHS = 0x40000000u,
  BL_GLYPH_RUN_FLAG_INVALID_FONT_DATA = 0x80000000u
  ,BL_GLYPH_RUN_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLGlyphPlacementType BLGlyphPlacementType; enum BLGlyphPlacementType {
  BL_GLYPH_PLACEMENT_TYPE_NONE = 0,
  BL_GLYPH_PLACEMENT_TYPE_ADVANCE_OFFSET = 1,
  BL_GLYPH_PLACEMENT_TYPE_DESIGN_UNITS = 2,
  BL_GLYPH_PLACEMENT_TYPE_USER_UNITS = 3,
  BL_GLYPH_PLACEMENT_TYPE_ABSOLUTE_UNITS = 4,
  BL_GLYPH_PLACEMENT_TYPE_MAX_VALUE = 4
  ,BL_GLYPH_PLACEMENT_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
struct BLGlyphRun {
  void* glyphData;
  void* placementData;
  size_t size;
  uint8_t reserved;
  uint8_t placementType;
  int8_t glyphAdvance;
  int8_t placementAdvance;
  uint32_t flags;
};
struct BLGlyphBufferImpl {
  union {
    struct {
      uint32_t* content;
      BLGlyphPlacement* placementData;
      size_t size;
      uint32_t reserved;
      uint32_t flags;
    };
    BLGlyphRun glyphRun;
  };
  BLGlyphInfo* infoData;
};
struct BLGlyphBufferCore {
  BLGlyphBufferImpl* impl;
};
__declspec(dllimport) BLResult __cdecl blGlyphBufferInit(BLGlyphBufferCore* self) ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferInitMove(BLGlyphBufferCore* self, BLGlyphBufferCore* other) ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferDestroy(BLGlyphBufferCore* self) ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferReset(BLGlyphBufferCore* self) ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferClear(BLGlyphBufferCore* self) ;
__declspec(dllimport) size_t __cdecl blGlyphBufferGetSize(const BLGlyphBufferCore* self)  ;
__declspec(dllimport) uint32_t __cdecl blGlyphBufferGetFlags(const BLGlyphBufferCore* self)  ;
__declspec(dllimport) const BLGlyphRun* __cdecl blGlyphBufferGetGlyphRun(const BLGlyphBufferCore* self)  ;
__declspec(dllimport) const uint32_t* __cdecl blGlyphBufferGetContent(const BLGlyphBufferCore* self)  ;
__declspec(dllimport) const BLGlyphInfo* __cdecl blGlyphBufferGetInfoData(const BLGlyphBufferCore* self)  ;
__declspec(dllimport) const BLGlyphPlacement* __cdecl blGlyphBufferGetPlacementData(const BLGlyphBufferCore* self)  ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferSetText(BLGlyphBufferCore* self, const void* textData, size_t size, BLTextEncoding encoding) ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferSetGlyphs(BLGlyphBufferCore* self, const uint32_t* glyphData, size_t size) ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferSetGlyphsFromStruct(BLGlyphBufferCore* self, const void* glyphData, size_t size, size_t glyphIdSize, intptr_t glyphIdAdvance) ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferSetDebugSink(BLGlyphBufferCore* self, BLDebugMessageSinkFunc sink, void* userData) ;
__declspec(dllimport) BLResult __cdecl blGlyphBufferResetDebugSink(BLGlyphBufferCore* self) ;
typedef enum BLPathCmd BLPathCmd; enum BLPathCmd {
  BL_PATH_CMD_MOVE = 0,
  BL_PATH_CMD_ON = 1,
  BL_PATH_CMD_QUAD = 2,
  BL_PATH_CMD_CONIC = 3,
  BL_PATH_CMD_CUBIC = 4,
  BL_PATH_CMD_CLOSE = 5,
  BL_PATH_CMD_WEIGHT = 6,
  BL_PATH_CMD_MAX_VALUE = 6
  ,BL_PATH_CMD_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLPathCmdExtra BLPathCmdExtra; enum BLPathCmdExtra {
  BL_PATH_CMD_PRESERVE = 0xFFFFFFFFu
};
typedef enum BLPathFlags BLPathFlags; enum BLPathFlags {
  BL_PATH_NO_FLAGS = 0u,
  BL_PATH_FLAG_EMPTY = 0x00000001u,
  BL_PATH_FLAG_MULTIPLE = 0x00000002u,
  BL_PATH_FLAG_QUADS = 0x00000004u,
  BL_PATH_FLAG_CONICS = 0x00000008u,
  BL_PATH_FLAG_CUBICS = 0x00000010u,
  BL_PATH_FLAG_INVALID = 0x40000000u,
  BL_PATH_FLAG_DIRTY = 0x80000000u
  ,BL_PATH_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLPathReverseMode BLPathReverseMode; enum BLPathReverseMode {
  BL_PATH_REVERSE_MODE_COMPLETE = 0,
  BL_PATH_REVERSE_MODE_SEPARATE = 1,
  BL_PATH_REVERSE_MODE_MAX_VALUE = 1
  ,BL_PATH_REVERSE_MODE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLStrokeJoin BLStrokeJoin; enum BLStrokeJoin {
  BL_STROKE_JOIN_MITER_CLIP = 0,
  BL_STROKE_JOIN_MITER_BEVEL = 1,
  BL_STROKE_JOIN_MITER_ROUND = 2,
  BL_STROKE_JOIN_BEVEL = 3,
  BL_STROKE_JOIN_ROUND = 4,
  BL_STROKE_JOIN_MAX_VALUE = 4
  ,BL_STROKE_JOIN_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLStrokeCapPosition BLStrokeCapPosition; enum BLStrokeCapPosition {
  BL_STROKE_CAP_POSITION_START = 0,
  BL_STROKE_CAP_POSITION_END = 1,
  BL_STROKE_CAP_POSITION_MAX_VALUE = 1
  ,BL_STROKE_CAP_POSITION_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLStrokeCap BLStrokeCap; enum BLStrokeCap {
  BL_STROKE_CAP_BUTT = 0,
  BL_STROKE_CAP_SQUARE = 1,
  BL_STROKE_CAP_ROUND = 2,
  BL_STROKE_CAP_ROUND_REV = 3,
  BL_STROKE_CAP_TRIANGLE = 4,
  BL_STROKE_CAP_TRIANGLE_REV = 5,
  BL_STROKE_CAP_MAX_VALUE = 5
  ,BL_STROKE_CAP_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLStrokeTransformOrder BLStrokeTransformOrder; enum BLStrokeTransformOrder {
  BL_STROKE_TRANSFORM_ORDER_AFTER = 0,
  BL_STROKE_TRANSFORM_ORDER_BEFORE = 1,
  BL_STROKE_TRANSFORM_ORDER_MAX_VALUE = 1
  ,BL_STROKE_TRANSFORM_ORDER_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFlattenMode BLFlattenMode; enum BLFlattenMode {
  BL_FLATTEN_MODE_DEFAULT = 0,
  BL_FLATTEN_MODE_RECURSIVE = 1,
  BL_FLATTEN_MODE_MAX_VALUE = 1
  ,BL_FLATTEN_MODE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLOffsetMode BLOffsetMode; enum BLOffsetMode {
  BL_OFFSET_MODE_DEFAULT = 0,
  BL_OFFSET_MODE_ITERATIVE = 1,
  BL_OFFSET_MODE_MAX_VALUE = 1
  ,BL_OFFSET_MODE_FORCE_UINT = 0xFFFFFFFFu
};
struct BLApproximationOptions {
  uint8_t flattenMode;
  uint8_t offsetMode;
  uint8_t reservedFlags[6];
  double flattenTolerance;
  double simplifyTolerance;
  double offsetParameter;
};
struct BLPathView {
  const uint8_t* commandData;
  const BLPoint* vertexData;
  size_t size;
};
typedef BLResult (__cdecl* BLPathSinkFunc)(BLPathCore* path, const void* info, void* userData) ;
typedef BLResult (__cdecl* BLPathStrokeSinkFunc)(BLPathCore* a, BLPathCore* b, BLPathCore* c, size_t inputStart, size_t inputEnd, void* userData) ;
extern __declspec(dllimport) const BLApproximationOptions blDefaultApproximationOptions;
struct BLPathCore  {
  BLObjectDetail _d;
};
__declspec(dllimport) BLResult __cdecl blPathInit(BLPathCore* self) ;
__declspec(dllimport) BLResult __cdecl blPathInitMove(BLPathCore* self, BLPathCore* other) ;
__declspec(dllimport) BLResult __cdecl blPathInitWeak(BLPathCore* self, const BLPathCore* other) ;
__declspec(dllimport) BLResult __cdecl blPathDestroy(BLPathCore* self) ;
__declspec(dllimport) BLResult __cdecl blPathReset(BLPathCore* self) ;
__declspec(dllimport) size_t __cdecl blPathGetSize(const BLPathCore* self)  ;
__declspec(dllimport) size_t __cdecl blPathGetCapacity(const BLPathCore* self)  ;
__declspec(dllimport) const uint8_t* __cdecl blPathGetCommandData(const BLPathCore* self)  ;
__declspec(dllimport) const BLPoint* __cdecl blPathGetVertexData(const BLPathCore* self)  ;
__declspec(dllimport) BLResult __cdecl blPathClear(BLPathCore* self) ;
__declspec(dllimport) BLResult __cdecl blPathShrink(BLPathCore* self) ;
__declspec(dllimport) BLResult __cdecl blPathReserve(BLPathCore* self, size_t n) ;
__declspec(dllimport) BLResult __cdecl blPathModifyOp(BLPathCore* self, BLModifyOp op, size_t n, uint8_t** cmdDataOut, BLPoint** vtxDataOut) ;
__declspec(dllimport) BLResult __cdecl blPathAssignMove(BLPathCore* self, BLPathCore* other) ;
__declspec(dllimport) BLResult __cdecl blPathAssignWeak(BLPathCore* self, const BLPathCore* other) ;
__declspec(dllimport) BLResult __cdecl blPathAssignDeep(BLPathCore* self, const BLPathCore* other) ;
__declspec(dllimport) BLResult __cdecl blPathSetVertexAt(BLPathCore* self, size_t index, uint32_t cmd, double x, double y) ;
__declspec(dllimport) BLResult __cdecl blPathMoveTo(BLPathCore* self, double x0, double y0) ;
__declspec(dllimport) BLResult __cdecl blPathLineTo(BLPathCore* self, double x1, double y1) ;
__declspec(dllimport) BLResult __cdecl blPathPolyTo(BLPathCore* self, const BLPoint* poly, size_t count) ;
__declspec(dllimport) BLResult __cdecl blPathQuadTo(BLPathCore* self, double x1, double y1, double x2, double y2) ;
__declspec(dllimport) BLResult __cdecl blPathConicTo(BLPathCore* self, double x1, double y1, double x2, double y2, double w) ;
__declspec(dllimport) BLResult __cdecl blPathCubicTo(BLPathCore* self, double x1, double y1, double x2, double y2, double x3, double y3) ;
__declspec(dllimport) BLResult __cdecl blPathSmoothQuadTo(BLPathCore* self, double x2, double y2) ;
__declspec(dllimport) BLResult __cdecl blPathSmoothCubicTo(BLPathCore* self, double x2, double y2, double x3, double y3) ;
__declspec(dllimport) BLResult __cdecl blPathArcTo(BLPathCore* self, double x, double y, double rx, double ry, double start, double sweep, _Bool forceMoveTo) ;
__declspec(dllimport) BLResult __cdecl blPathArcQuadrantTo(BLPathCore* self, double x1, double y1, double x2, double y2) ;
__declspec(dllimport) BLResult __cdecl blPathEllipticArcTo(BLPathCore* self, double rx, double ry, double xAxisRotation, _Bool largeArcFlag, _Bool sweepFlag, double x1, double y1) ;
__declspec(dllimport) BLResult __cdecl blPathClose(BLPathCore* self) ;
__declspec(dllimport) BLResult __cdecl blPathAddGeometry(BLPathCore* self, BLGeometryType geometryType, const void* geometryData, const BLMatrix2D* m, BLGeometryDirection dir) ;
__declspec(dllimport) BLResult __cdecl blPathAddBoxI(BLPathCore* self, const BLBoxI* box, BLGeometryDirection dir) ;
__declspec(dllimport) BLResult __cdecl blPathAddBoxD(BLPathCore* self, const BLBox* box, BLGeometryDirection dir) ;
__declspec(dllimport) BLResult __cdecl blPathAddRectI(BLPathCore* self, const BLRectI* rect, BLGeometryDirection dir) ;
__declspec(dllimport) BLResult __cdecl blPathAddRectD(BLPathCore* self, const BLRect* rect, BLGeometryDirection dir) ;
__declspec(dllimport) BLResult __cdecl blPathAddPath(BLPathCore* self, const BLPathCore* other, const BLRange* range) ;
__declspec(dllimport) BLResult __cdecl blPathAddTranslatedPath(BLPathCore* self, const BLPathCore* other, const BLRange* range, const BLPoint* p) ;
__declspec(dllimport) BLResult __cdecl blPathAddTransformedPath(BLPathCore* self, const BLPathCore* other, const BLRange* range, const BLMatrix2D* m) ;
__declspec(dllimport) BLResult __cdecl blPathAddReversedPath(BLPathCore* self, const BLPathCore* other, const BLRange* range, BLPathReverseMode reverseMode) ;
__declspec(dllimport) BLResult __cdecl blPathAddStrokedPath(BLPathCore* self, const BLPathCore* other, const BLRange* range, const BLStrokeOptionsCore* options, const BLApproximationOptions* approx) ;
__declspec(dllimport) BLResult __cdecl blPathRemoveRange(BLPathCore* self, const BLRange* range) ;
__declspec(dllimport) BLResult __cdecl blPathTranslate(BLPathCore* self, const BLRange* range, const BLPoint* p) ;
__declspec(dllimport) BLResult __cdecl blPathTransform(BLPathCore* self, const BLRange* range, const BLMatrix2D* m) ;
__declspec(dllimport) BLResult __cdecl blPathFitTo(BLPathCore* self, const BLRange* range, const BLRect* rect, uint32_t fitFlags) ;
__declspec(dllimport) _Bool     __cdecl blPathEquals(const BLPathCore* a, const BLPathCore* b) ;
__declspec(dllimport) BLResult __cdecl blPathGetInfoFlags(const BLPathCore* self, uint32_t* flagsOut) ;
__declspec(dllimport) BLResult __cdecl blPathGetControlBox(const BLPathCore* self, BLBox* boxOut) ;
__declspec(dllimport) BLResult __cdecl blPathGetBoundingBox(const BLPathCore* self, BLBox* boxOut) ;
__declspec(dllimport) BLResult __cdecl blPathGetFigureRange(const BLPathCore* self, size_t index, BLRange* rangeOut) ;
__declspec(dllimport) BLResult __cdecl blPathGetLastVertex(const BLPathCore* self, BLPoint* vtxOut) ;
__declspec(dllimport) BLResult __cdecl blPathGetClosestVertex(const BLPathCore* self, const BLPoint* p, double maxDistance, size_t* indexOut, double* distanceOut) ;
__declspec(dllimport) BLHitTest __cdecl blPathHitTest(const BLPathCore* self, const BLPoint* p, BLFillRule fillRule) ;
struct BLStrokeOptionsCore {
  union {
    struct {
      uint8_t startCap;
      uint8_t endCap;
      uint8_t join;
      uint8_t transformOrder;
      uint8_t reserved[4];
    };
    uint8_t caps[BL_STROKE_CAP_POSITION_MAX_VALUE + 1];
    uint64_t hints;
  };
  double width;
  double miterLimit;
  double dashOffset;
  BLArrayCore dashArray;
};
__declspec(dllimport) BLResult __cdecl blStrokeOptionsInit(BLStrokeOptionsCore* self) ;
__declspec(dllimport) BLResult __cdecl blStrokeOptionsInitMove(BLStrokeOptionsCore* self, BLStrokeOptionsCore* other) ;
__declspec(dllimport) BLResult __cdecl blStrokeOptionsInitWeak(BLStrokeOptionsCore* self, const BLStrokeOptionsCore* other) ;
__declspec(dllimport) BLResult __cdecl blStrokeOptionsDestroy(BLStrokeOptionsCore* self) ;
__declspec(dllimport) BLResult __cdecl blStrokeOptionsReset(BLStrokeOptionsCore* self) ;
__declspec(dllimport) _Bool __cdecl blStrokeOptionsEquals(const BLStrokeOptionsCore* a, const BLStrokeOptionsCore* b) ;
__declspec(dllimport) BLResult __cdecl blStrokeOptionsAssignMove(BLStrokeOptionsCore* self, BLStrokeOptionsCore* other) ;
__declspec(dllimport) BLResult __cdecl blStrokeOptionsAssignWeak(BLStrokeOptionsCore* self, const BLStrokeOptionsCore* other) ;
__declspec(dllimport) BLResult __cdecl blPathStrokeToSink(
  const BLPathCore* self,
  const BLRange* range,
  const BLStrokeOptionsCore* strokeOptions,
  const BLApproximationOptions* approximationOptions,
  BLPathCore *a,
  BLPathCore *b,
  BLPathCore *c,
  BLPathStrokeSinkFunc sink, void* userData) ;
struct BLPathImpl  {
  union {
    struct {
      uint8_t* commandData;
      BLPoint* vertexData;
      size_t size;
    };
    BLPathView view;
  };
  size_t capacity;
  uint32_t flags;
};
typedef enum BLFontFaceFlags BLFontFaceFlags; enum BLFontFaceFlags {
  BL_FONT_FACE_NO_FLAGS = 0u,
  BL_FONT_FACE_FLAG_TYPOGRAPHIC_NAMES = 0x00000001u,
  BL_FONT_FACE_FLAG_TYPOGRAPHIC_METRICS = 0x00000002u,
  BL_FONT_FACE_FLAG_CHAR_TO_GLYPH_MAPPING = 0x00000004u,
  BL_FONT_FACE_FLAG_HORIZONTAL_METIRCS = 0x00000010u,
  BL_FONT_FACE_FLAG_VERTICAL_METRICS = 0x00000020u,
  BL_FONT_FACE_FLAG_HORIZONTAL_KERNING = 0x00000040u,
  BL_FONT_FACE_FLAG_VERTICAL_KERNING = 0x00000080u,
  BL_FONT_FACE_FLAG_OPENTYPE_FEATURES = 0x00000100u,
  BL_FONT_FACE_FLAG_PANOSE_DATA = 0x00000200u,
  BL_FONT_FACE_FLAG_UNICODE_COVERAGE = 0x00000400u,
  BL_FONT_FACE_FLAG_BASELINE_Y_EQUALS_0 = 0x00001000u,
  BL_FONT_FACE_FLAG_LSB_POINT_X_EQUALS_0 = 0x00002000u,
  BL_FONT_FACE_FLAG_VARIATION_SEQUENCES = 0x10000000u,
  BL_FONT_FACE_FLAG_OPENTYPE_VARIATIONS = 0x20000000u,
  BL_FONT_FACE_FLAG_SYMBOL_FONT = 0x40000000u,
  BL_FONT_FACE_FLAG_LAST_RESORT_FONT = 0x80000000u
  ,BL_FONT_FACE_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFontFaceDiagFlags BLFontFaceDiagFlags; enum BLFontFaceDiagFlags {
  BL_FONT_FACE_DIAG_NO_FLAGS = 0u,
  BL_FONT_FACE_DIAG_WRONG_NAME_DATA = 0x00000001u,
  BL_FONT_FACE_DIAG_FIXED_NAME_DATA = 0x00000002u,
  BL_FONT_FACE_DIAG_WRONG_KERN_DATA = 0x00000004u,
  BL_FONT_FACE_DIAG_FIXED_KERN_DATA = 0x00000008u,
  BL_FONT_FACE_DIAG_WRONG_CMAP_DATA = 0x00000010u,
  BL_FONT_FACE_DIAG_WRONG_CMAP_FORMAT = 0x00000020u
  ,BL_FONT_FACE_DIAG_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFontOutlineType BLFontOutlineType; enum BLFontOutlineType {
  BL_FONT_OUTLINE_TYPE_NONE = 0,
  BL_FONT_OUTLINE_TYPE_TRUETYPE = 1,
  BL_FONT_OUTLINE_TYPE_CFF = 2,
  BL_FONT_OUTLINE_TYPE_CFF2 = 3,
  BL_FONT_OUTLINE_TYPE_MAX_VALUE = 3
  ,BL_FONT_OUTLINE_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
struct BLFontFaceInfo {
  uint8_t faceType;
  uint8_t outlineType;
  uint8_t reserved8[2];
  uint32_t glyphCount;
  uint32_t revision;
  uint32_t faceIndex;
  uint32_t faceFlags;
  uint32_t diagFlags;
  uint32_t reserved[2];
};
struct BLFontFaceCore  {
  BLObjectDetail _d;
};
struct BLFontFaceVirt  {
  BLObjectVirtBase base;
};
struct BLFontFaceImpl  {
  const BLFontFaceVirt* virt;
  uint16_t weight;
  uint8_t stretch;
  uint8_t style;
  BLFontFaceInfo faceInfo;
  BLUniqueId uniqueId;
  BLFontDataCore data;
  BLStringCore fullName;
  BLStringCore familyName;
  BLStringCore subfamilyName;
  BLStringCore postScriptName;
  BLFontDesignMetrics designMetrics;
  BLFontUnicodeCoverage unicodeCoverage;
  BLFontPanose panose;
};
__declspec(dllimport) BLResult __cdecl blFontFaceInit(BLFontFaceCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFaceInitMove(BLFontFaceCore* self, BLFontFaceCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontFaceInitWeak(BLFontFaceCore* self, const BLFontFaceCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontFaceDestroy(BLFontFaceCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFaceReset(BLFontFaceCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFaceAssignMove(BLFontFaceCore* self, BLFontFaceCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontFaceAssignWeak(BLFontFaceCore* self, const BLFontFaceCore* other) ;
__declspec(dllimport) _Bool __cdecl blFontFaceEquals(const BLFontFaceCore* a, const BLFontFaceCore* b) ;
__declspec(dllimport) BLResult __cdecl blFontFaceCreateFromFile(BLFontFaceCore* self, const char* fileName, BLFileReadFlags readFlags) ;
__declspec(dllimport) BLResult __cdecl blFontFaceCreateFromData(BLFontFaceCore* self, const BLFontDataCore* fontData, uint32_t faceIndex) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetFullName(const BLFontFaceCore* self, BLStringCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetFamilyName(const BLFontFaceCore* self, BLStringCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetSubfamilyName(const BLFontFaceCore* self, BLStringCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetPostScriptName(const BLFontFaceCore* self, BLStringCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetFaceInfo(const BLFontFaceCore* self, BLFontFaceInfo* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetDesignMetrics(const BLFontFaceCore* self, BLFontDesignMetrics* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetUnicodeCoverage(const BLFontFaceCore* self, BLFontUnicodeCoverage* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetCharacterCoverage(const BLFontFaceCore* self, BLBitSetCore* out) ;
__declspec(dllimport) _Bool __cdecl blFontFaceHasScriptTag(const BLFontFaceCore* self, BLTag scriptTag) ;
__declspec(dllimport) _Bool __cdecl blFontFaceHasFeatureTag(const BLFontFaceCore* self, BLTag featureTag) ;
__declspec(dllimport) _Bool __cdecl blFontFaceHasVariationTag(const BLFontFaceCore* self, BLTag variationTag) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetScriptTags(const BLFontFaceCore* self, BLArrayCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetFeatureTags(const BLFontFaceCore* self, BLArrayCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontFaceGetVariationTags(const BLFontFaceCore* self, BLArrayCore* out) ;
struct BLFontFeatureSettingsCore  {
  BLObjectDetail _d;
};
struct BLFontFeatureSettingsImpl  {
  BLFontFeatureItem* data;
  size_t size;
  size_t capacity;
};
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsInit(BLFontFeatureSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsInitMove(BLFontFeatureSettingsCore* self, BLFontFeatureSettingsCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsInitWeak(BLFontFeatureSettingsCore* self, const BLFontFeatureSettingsCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsDestroy(BLFontFeatureSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsReset(BLFontFeatureSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsClear(BLFontFeatureSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsShrink(BLFontFeatureSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsAssignMove(BLFontFeatureSettingsCore* self, BLFontFeatureSettingsCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsAssignWeak(BLFontFeatureSettingsCore* self, const BLFontFeatureSettingsCore* other) ;
__declspec(dllimport) size_t __cdecl blFontFeatureSettingsGetSize(const BLFontFeatureSettingsCore* self) ;
__declspec(dllimport) size_t __cdecl blFontFeatureSettingsGetCapacity(const BLFontFeatureSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsGetView(const BLFontFeatureSettingsCore* self, BLFontFeatureSettingsView* out) ;
__declspec(dllimport) _Bool __cdecl blFontFeatureSettingsHasValue(const BLFontFeatureSettingsCore* self, BLTag featureTag) ;
__declspec(dllimport) uint32_t __cdecl blFontFeatureSettingsGetValue(const BLFontFeatureSettingsCore* self, BLTag featureTag) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsSetValue(BLFontFeatureSettingsCore* self, BLTag featureTag, uint32_t value) ;
__declspec(dllimport) BLResult __cdecl blFontFeatureSettingsRemoveValue(BLFontFeatureSettingsCore* self, BLTag featureTag) ;
__declspec(dllimport) _Bool __cdecl blFontFeatureSettingsEquals(const BLFontFeatureSettingsCore* a, const BLFontFeatureSettingsCore* b) ;
static const uint32_t BL_FONT_FEATURE_INVALID_VALUE = 0xFFFFFFFFu;
struct BLFontFeatureItem {
  BLTag tag;
  uint32_t value;
};
struct BLFontFeatureSettingsView {
  const BLFontFeatureItem* data;
  size_t size;
  BLFontFeatureItem ssoData[36];
};
struct BLFontVariationSettingsCore  {
  BLObjectDetail _d;
};
struct BLFontVariationSettingsImpl  {
  BLFontVariationItem* data;
  size_t size;
  size_t capacity;
};
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsInit(BLFontVariationSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsInitMove(BLFontVariationSettingsCore* self, BLFontVariationSettingsCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsInitWeak(BLFontVariationSettingsCore* self, const BLFontVariationSettingsCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsDestroy(BLFontVariationSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsReset(BLFontVariationSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsClear(BLFontVariationSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsShrink(BLFontVariationSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsAssignMove(BLFontVariationSettingsCore* self, BLFontVariationSettingsCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsAssignWeak(BLFontVariationSettingsCore* self, const BLFontVariationSettingsCore* other) ;
__declspec(dllimport) size_t __cdecl blFontVariationSettingsGetSize(const BLFontVariationSettingsCore* self) ;
__declspec(dllimport) size_t __cdecl blFontVariationSettingsGetCapacity(const BLFontVariationSettingsCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsGetView(const BLFontVariationSettingsCore* self, BLFontVariationSettingsView* out) ;
__declspec(dllimport) _Bool __cdecl blFontVariationSettingsHasValue(const BLFontVariationSettingsCore* self, BLTag variationTag) ;
__declspec(dllimport) float __cdecl blFontVariationSettingsGetValue(const BLFontVariationSettingsCore* self, BLTag variationTag) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsSetValue(BLFontVariationSettingsCore* self, BLTag variationTag, float value) ;
__declspec(dllimport) BLResult __cdecl blFontVariationSettingsRemoveValue(BLFontVariationSettingsCore* self, BLTag variationTag) ;
__declspec(dllimport) _Bool __cdecl blFontVariationSettingsEquals(const BLFontVariationSettingsCore* a, const BLFontVariationSettingsCore* b) ;
struct BLFontVariationItem {
  BLTag tag;
  float value;
};
struct BLFontVariationSettingsView {
  const BLFontVariationItem* data;
  size_t size;
  BLFontVariationItem ssoData[3];
};
struct BLFontCore  {
  BLObjectDetail _d;
};
struct BLFontImpl  {
  BLFontFaceCore face;
  uint16_t weight;
  uint8_t stretch;
  uint8_t style;
  uint32_t reserved;
  BLFontMetrics metrics;
  BLFontMatrix matrix;
  BLFontFeatureSettingsCore featureSettings;
  BLFontVariationSettingsCore variationSettings;
};
__declspec(dllimport) BLResult __cdecl blFontInit(BLFontCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontInitMove(BLFontCore* self, BLFontCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontInitWeak(BLFontCore* self, const BLFontCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontDestroy(BLFontCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontReset(BLFontCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontAssignMove(BLFontCore* self, BLFontCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontAssignWeak(BLFontCore* self, const BLFontCore* other) ;
__declspec(dllimport) _Bool __cdecl blFontEquals(const BLFontCore* a, const BLFontCore* b) ;
__declspec(dllimport) BLResult __cdecl blFontCreateFromFace(BLFontCore* self, const BLFontFaceCore* face, float size) ;
__declspec(dllimport) BLResult __cdecl blFontCreateFromFaceWithSettings(BLFontCore* self, const BLFontFaceCore* face, float size, const BLFontFeatureSettingsCore* featureSettings, const BLFontVariationSettingsCore* variationSettings) ;
__declspec(dllimport) BLResult __cdecl blFontGetFace(const BLFontCore* self, BLFontFaceCore* out) ;
__declspec(dllimport) float __cdecl blFontGetSize(const BLFontCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontSetSize(BLFontCore* self, float size) ;
__declspec(dllimport) BLResult __cdecl blFontGetMetrics(const BLFontCore* self, BLFontMetrics* out) ;
__declspec(dllimport) BLResult __cdecl blFontGetMatrix(const BLFontCore* self, BLFontMatrix* out) ;
__declspec(dllimport) BLResult __cdecl blFontGetDesignMetrics(const BLFontCore* self, BLFontDesignMetrics* out) ;
__declspec(dllimport) BLResult __cdecl blFontGetFeatureSettings(const BLFontCore* self, BLFontFeatureSettingsCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontSetFeatureSettings(BLFontCore* self, const BLFontFeatureSettingsCore* featureSettings) ;
__declspec(dllimport) BLResult __cdecl blFontResetFeatureSettings(BLFontCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontGetVariationSettings(const BLFontCore* self, BLFontVariationSettingsCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontSetVariationSettings(BLFontCore* self, const BLFontVariationSettingsCore* variationSettings) ;
__declspec(dllimport) BLResult __cdecl blFontResetVariationSettings(BLFontCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontShape(const BLFontCore* self, BLGlyphBufferCore* gb) ;
__declspec(dllimport) BLResult __cdecl blFontMapTextToGlyphs(const BLFontCore* self, BLGlyphBufferCore* gb, BLGlyphMappingState* stateOut) ;
__declspec(dllimport) BLResult __cdecl blFontPositionGlyphs(const BLFontCore* self, BLGlyphBufferCore* gb) ;
__declspec(dllimport) BLResult __cdecl blFontApplyKerning(const BLFontCore* self, BLGlyphBufferCore* gb) ;
__declspec(dllimport) BLResult __cdecl blFontApplyGSub(const BLFontCore* self, BLGlyphBufferCore* gb, const BLBitArrayCore* lookups) ;
__declspec(dllimport) BLResult __cdecl blFontApplyGPos(const BLFontCore* self, BLGlyphBufferCore* gb, const BLBitArrayCore* lookups) ;
__declspec(dllimport) BLResult __cdecl blFontGetTextMetrics(const BLFontCore* self, BLGlyphBufferCore* gb, BLTextMetrics* out) ;
__declspec(dllimport) BLResult __cdecl blFontGetGlyphBounds(const BLFontCore* self, const uint32_t* glyphData, intptr_t glyphAdvance, BLBoxI* out, size_t count) ;
__declspec(dllimport) BLResult __cdecl blFontGetGlyphAdvances(const BLFontCore* self, const uint32_t* glyphData, intptr_t glyphAdvance, BLGlyphPlacement* out, size_t count) ;
__declspec(dllimport) BLResult __cdecl blFontGetGlyphOutlines(const BLFontCore* self, BLGlyphId glyphId, const BLMatrix2D* userTransform, BLPathCore* out, BLPathSinkFunc sink, void* userData) ;
__declspec(dllimport) BLResult __cdecl blFontGetGlyphRunOutlines(const BLFontCore* self, const BLGlyphRun* glyphRun, const BLMatrix2D* userTransform, BLPathCore* out, BLPathSinkFunc sink, void* userData) ;
typedef enum BLTransformType BLTransformType; enum BLTransformType {
  BL_TRANSFORM_TYPE_IDENTITY = 0,
  BL_TRANSFORM_TYPE_TRANSLATE = 1,
  BL_TRANSFORM_TYPE_SCALE = 2,
  BL_TRANSFORM_TYPE_SWAP = 3,
  BL_TRANSFORM_TYPE_AFFINE = 4,
  BL_TRANSFORM_TYPE_INVALID = 5,
  BL_TRANSFORM_TYPE_MAX_VALUE = 5
  ,BL_MATRIX2D_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLTransformOp BLTransformOp; enum BLTransformOp {
  BL_TRANSFORM_OP_RESET = 0,
  BL_TRANSFORM_OP_ASSIGN = 1,
  BL_TRANSFORM_OP_TRANSLATE = 2,
  BL_TRANSFORM_OP_SCALE = 3,
  BL_TRANSFORM_OP_SKEW = 4,
  BL_TRANSFORM_OP_ROTATE = 5,
  BL_TRANSFORM_OP_ROTATE_PT = 6,
  BL_TRANSFORM_OP_TRANSFORM = 7,
  BL_TRANSFORM_OP_POST_TRANSLATE = 8,
  BL_TRANSFORM_OP_POST_SCALE = 9,
  BL_TRANSFORM_OP_POST_SKEW = 10,
  BL_TRANSFORM_OP_POST_ROTATE = 11,
  BL_TRANSFORM_OP_POST_ROTATE_PT = 12,
  BL_TRANSFORM_OP_POST_TRANSFORM = 13,
  BL_TRANSFORM_OP_MAX_VALUE = 13
  ,BL_TRANSFORM_OP_FORCE_UINT = 0xFFFFFFFFu
};
__declspec(dllimport) BLResult __cdecl blMatrix2DSetIdentity(BLMatrix2D* self) ;
__declspec(dllimport) BLResult __cdecl blMatrix2DSetTranslation(BLMatrix2D* self, double x, double y) ;
__declspec(dllimport) BLResult __cdecl blMatrix2DSetScaling(BLMatrix2D* self, double x, double y) ;
__declspec(dllimport) BLResult __cdecl blMatrix2DSetSkewing(BLMatrix2D* self, double x, double y) ;
__declspec(dllimport) BLResult __cdecl blMatrix2DSetRotation(BLMatrix2D* self, double angle, double cx, double cy) ;
__declspec(dllimport) BLResult __cdecl blMatrix2DApplyOp(BLMatrix2D* self, BLTransformOp opType, const void* opData) ;
__declspec(dllimport) BLResult __cdecl blMatrix2DInvert(BLMatrix2D* dst, const BLMatrix2D* src) ;
__declspec(dllimport) BLTransformType __cdecl blMatrix2DGetType(const BLMatrix2D* self) ;
__declspec(dllimport) BLResult __cdecl blMatrix2DMapPointDArray(const BLMatrix2D* self, BLPoint* dst, const BLPoint* src, size_t count) ;
struct BLMatrix2D {
  union {
    double m[6];
    struct {
      double m00;
      double m01;
      double m10;
      double m11;
      double m20;
      double m21;
    };
  };
};
typedef enum BLGradientType BLGradientType; enum BLGradientType {
  BL_GRADIENT_TYPE_LINEAR = 0,
  BL_GRADIENT_TYPE_RADIAL = 1,
  BL_GRADIENT_TYPE_CONIC = 2,
  BL_GRADIENT_TYPE_MAX_VALUE = 2
  ,BL_GRADIENT_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLGradientValue BLGradientValue; enum BLGradientValue {
  BL_GRADIENT_VALUE_COMMON_X0 = 0,
  BL_GRADIENT_VALUE_COMMON_Y0 = 1,
  BL_GRADIENT_VALUE_COMMON_X1 = 2,
  BL_GRADIENT_VALUE_COMMON_Y1 = 3,
  BL_GRADIENT_VALUE_RADIAL_R0 = 4,
  BL_GRADIENT_VALUE_RADIAL_R1 = 5,
  BL_GRADIENT_VALUE_CONIC_ANGLE = 2,
  BL_GRADIENT_VALUE_CONIC_REPEAT = 3,
  BL_GRADIENT_VALUE_MAX_VALUE = 5
  ,BL_GRADIENT_VALUE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLGradientQuality BLGradientQuality; enum BLGradientQuality {
  BL_GRADIENT_QUALITY_NEAREST = 0,
  BL_GRADIENT_QUALITY_SMOOTH = 1,
  BL_GRADIENT_QUALITY_DITHER = 2,
  BL_GRADIENT_QUALITY_MAX_VALUE = 2
  ,BL_GRADIENT_QUALITY_FORCE_UINT = 0xFFFFFFFFu
};
struct BLGradientStop {
  double offset;
  BLRgba64 rgba;
};
struct BLLinearGradientValues {
  double x0;
  double y0;
  double x1;
  double y1;
};
struct BLRadialGradientValues {
  double x0;
  double y0;
  double x1;
  double y1;
  double r0;
  double r1;
};
struct BLConicGradientValues {
  double x0;
  double y0;
  double angle;
  double repeat;
};
struct BLGradientCore  {
  BLObjectDetail _d;
};
struct BLGradientImpl  {
  BLGradientStop* stops;
  size_t size;
  size_t capacity;
  BLMatrix2D transform;
  union {
    double values[BL_GRADIENT_VALUE_MAX_VALUE + 1];
    BLLinearGradientValues linear;
    BLRadialGradientValues radial;
    BLConicGradientValues conic;
  };
};
__declspec(dllimport) BLResult __cdecl blGradientInit(BLGradientCore* self) ;
__declspec(dllimport) BLResult __cdecl blGradientInitMove(BLGradientCore* self, BLGradientCore* other) ;
__declspec(dllimport) BLResult __cdecl blGradientInitWeak(BLGradientCore* self, const BLGradientCore* other) ;
__declspec(dllimport) BLResult __cdecl blGradientInitAs(BLGradientCore* self, BLGradientType type, const void* values, BLExtendMode extendMode, const BLGradientStop* stops, size_t n, const BLMatrix2D* transform) ;
__declspec(dllimport) BLResult __cdecl blGradientDestroy(BLGradientCore* self) ;
__declspec(dllimport) BLResult __cdecl blGradientReset(BLGradientCore* self) ;
__declspec(dllimport) BLResult __cdecl blGradientAssignMove(BLGradientCore* self, BLGradientCore* other) ;
__declspec(dllimport) BLResult __cdecl blGradientAssignWeak(BLGradientCore* self, const BLGradientCore* other) ;
__declspec(dllimport) BLResult __cdecl blGradientCreate(BLGradientCore* self, BLGradientType type, const void* values, BLExtendMode extendMode, const BLGradientStop* stops, size_t n, const BLMatrix2D* transform) ;
__declspec(dllimport) BLResult __cdecl blGradientShrink(BLGradientCore* self) ;
__declspec(dllimport) BLResult __cdecl blGradientReserve(BLGradientCore* self, size_t n) ;
__declspec(dllimport) BLGradientType __cdecl blGradientGetType(const BLGradientCore* self)  ;
__declspec(dllimport) BLResult __cdecl blGradientSetType(BLGradientCore* self, BLGradientType type) ;
__declspec(dllimport) BLExtendMode __cdecl blGradientGetExtendMode(const BLGradientCore* self)  ;
__declspec(dllimport) BLResult __cdecl blGradientSetExtendMode(BLGradientCore* self, BLExtendMode extendMode) ;
__declspec(dllimport) double __cdecl blGradientGetValue(const BLGradientCore* self, size_t index)  ;
__declspec(dllimport) BLResult __cdecl blGradientSetValue(BLGradientCore* self, size_t index, double value) ;
__declspec(dllimport) BLResult __cdecl blGradientSetValues(BLGradientCore* self, size_t index, const double* values, size_t n) ;
__declspec(dllimport) size_t __cdecl blGradientGetSize(const BLGradientCore* self)  ;
__declspec(dllimport) size_t __cdecl blGradientGetCapacity(const BLGradientCore* self)  ;
__declspec(dllimport) const BLGradientStop* __cdecl blGradientGetStops(const BLGradientCore* self)  ;
__declspec(dllimport) BLResult __cdecl blGradientResetStops(BLGradientCore* self) ;
__declspec(dllimport) BLResult __cdecl blGradientAssignStops(BLGradientCore* self, const BLGradientStop* stops, size_t n) ;
__declspec(dllimport) BLResult __cdecl blGradientAddStopRgba32(BLGradientCore* self, double offset, uint32_t argb32) ;
__declspec(dllimport) BLResult __cdecl blGradientAddStopRgba64(BLGradientCore* self, double offset, uint64_t argb64) ;
__declspec(dllimport) BLResult __cdecl blGradientRemoveStop(BLGradientCore* self, size_t index) ;
__declspec(dllimport) BLResult __cdecl blGradientRemoveStopByOffset(BLGradientCore* self, double offset, uint32_t all) ;
__declspec(dllimport) BLResult __cdecl blGradientRemoveStopsByIndex(BLGradientCore* self, size_t rStart, size_t rEnd) ;
__declspec(dllimport) BLResult __cdecl blGradientRemoveStopsByOffset(BLGradientCore* self, double offsetMin, double offsetMax) ;
__declspec(dllimport) BLResult __cdecl blGradientReplaceStopRgba32(BLGradientCore* self, size_t index, double offset, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blGradientReplaceStopRgba64(BLGradientCore* self, size_t index, double offset, uint64_t rgba64) ;
__declspec(dllimport) size_t __cdecl blGradientIndexOfStop(const BLGradientCore* self, double offset)  ;
__declspec(dllimport) BLResult __cdecl blGradientGetTransform(const BLGradientCore* self, BLMatrix2D* transformOut) ;
__declspec(dllimport) BLTransformType __cdecl blGradientGetTransformType(const BLGradientCore* self) ;
__declspec(dllimport) BLResult __cdecl blGradientApplyTransformOp(BLGradientCore* self, BLTransformOp opType, const void* opData) ;
__declspec(dllimport) _Bool __cdecl blGradientEquals(const BLGradientCore* a, const BLGradientCore* b)  ;
typedef enum BLFormat BLFormat; enum BLFormat {
  BL_FORMAT_NONE = 0,
  BL_FORMAT_PRGB32 = 1,
  BL_FORMAT_XRGB32 = 2,
  BL_FORMAT_A8 = 3,
  BL_FORMAT_MAX_VALUE = 3
  ,BL_FORMAT_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLFormatFlags BLFormatFlags; enum BLFormatFlags {
  BL_FORMAT_NO_FLAGS = 0u,
  BL_FORMAT_FLAG_RGB = 0x00000001u,
  BL_FORMAT_FLAG_ALPHA = 0x00000002u,
  BL_FORMAT_FLAG_RGBA = 0x00000003u,
  BL_FORMAT_FLAG_LUM = 0x00000004u,
  BL_FORMAT_FLAG_LUMA = 0x00000006u,
  BL_FORMAT_FLAG_INDEXED = 0x00000010u,
  BL_FORMAT_FLAG_PREMULTIPLIED = 0x00000100u,
  BL_FORMAT_FLAG_BYTE_SWAP = 0x00000200u,
  BL_FORMAT_FLAG_BYTE_ALIGNED = 0x00010000u,
  BL_FORMAT_FLAG_UNDEFINED_BITS = 0x00020000u,
  BL_FORMAT_FLAG_LE = (1234 == 1234) ? (uint32_t)0 : (uint32_t)BL_FORMAT_FLAG_BYTE_SWAP,
  BL_FORMAT_FLAG_BE = (1234 == 4321) ? (uint32_t)0 : (uint32_t)BL_FORMAT_FLAG_BYTE_SWAP
  ,BL_FORMAT_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
__declspec(dllimport) BLResult __cdecl blFormatInfoQuery(BLFormatInfo* self, BLFormat format) ;
__declspec(dllimport) BLResult __cdecl blFormatInfoSanitize(BLFormatInfo* self) ;
struct BLFormatInfo {
  uint32_t depth;
  BLFormatFlags flags;
  union {
    struct {
      uint8_t sizes[4];
      uint8_t shifts[4];
    };
    struct {
      uint8_t rSize;
      uint8_t gSize;
      uint8_t bSize;
      uint8_t aSize;
      uint8_t rShift;
      uint8_t gShift;
      uint8_t bShift;
      uint8_t aShift;
    };
    BLRgba32* palette;
  };
};
extern __declspec(dllimport) const BLFormatInfo blFormatInfo[];
struct BLImageCodecCore  {
  BLObjectDetail _d;
};
struct BLImageCodecVirt  {
  BLObjectVirtBase base;
  uint32_t (__cdecl* inspectData)(const BLImageCodecImpl* impl, const uint8_t* data, size_t size) ;
  BLResult (__cdecl* createDecoder)(const BLImageCodecImpl* impl, BLImageDecoderCore* dst) ;
  BLResult (__cdecl* createEncoder)(const BLImageCodecImpl* impl, BLImageEncoderCore* dst) ;
};
struct BLImageCodecImpl  {
  const BLImageCodecVirt* virt;
  BLStringCore name;
  BLStringCore vendor;
  BLStringCore mimeType;
  BLStringCore extensions;
  uint32_t features;
};
__declspec(dllimport) BLResult __cdecl blImageCodecInit(BLImageCodecCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageCodecInitMove(BLImageCodecCore* self, BLImageCodecCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageCodecInitWeak(BLImageCodecCore* self, const BLImageCodecCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageCodecInitByName(BLImageCodecCore* self, const char* name, size_t size, const BLArrayCore* codecs) ;
__declspec(dllimport) BLResult __cdecl blImageCodecDestroy(BLImageCodecCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageCodecReset(BLImageCodecCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageCodecAssignMove(BLImageCodecCore* self, BLImageCodecCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageCodecAssignWeak(BLImageCodecCore* self, const BLImageCodecCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageCodecFindByName(BLImageCodecCore* self, const char* name, size_t size, const BLArrayCore* codecs) ;
__declspec(dllimport) BLResult __cdecl blImageCodecFindByExtension(BLImageCodecCore* self, const char* name, size_t size, const BLArrayCore* codecs) ;
__declspec(dllimport) BLResult __cdecl blImageCodecFindByData(BLImageCodecCore* self, const void* data, size_t size, const BLArrayCore* codecs) ;
__declspec(dllimport) uint32_t __cdecl blImageCodecInspectData(const BLImageCodecCore* self, const void* data, size_t size) ;
__declspec(dllimport) BLResult __cdecl blImageCodecCreateDecoder(const BLImageCodecCore* self, BLImageDecoderCore* dst) ;
__declspec(dllimport) BLResult __cdecl blImageCodecCreateEncoder(const BLImageCodecCore* self, BLImageEncoderCore* dst) ;
__declspec(dllimport) BLResult __cdecl blImageCodecArrayInitBuiltInCodecs(BLArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageCodecArrayAssignBuiltInCodecs(BLArrayCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageCodecAddToBuiltIn(const BLImageCodecCore* codec) ;
__declspec(dllimport) BLResult __cdecl blImageCodecRemoveFromBuiltIn(const BLImageCodecCore* codec) ;
typedef enum BLImageCodecFeatures BLImageCodecFeatures; enum BLImageCodecFeatures {
  BL_IMAGE_CODEC_NO_FEATURES = 0u,
  BL_IMAGE_CODEC_FEATURE_READ = 0x00000001u,
  BL_IMAGE_CODEC_FEATURE_WRITE = 0x00000002u,
  BL_IMAGE_CODEC_FEATURE_LOSSLESS = 0x00000004u,
  BL_IMAGE_CODEC_FEATURE_LOSSY = 0x00000008u,
  BL_IMAGE_CODEC_FEATURE_MULTI_FRAME = 0x00000010u,
  BL_IMAGE_CODEC_FEATURE_IPTC = 0x10000000u,
  BL_IMAGE_CODEC_FEATURE_EXIF = 0x20000000u,
  BL_IMAGE_CODEC_FEATURE_XMP = 0x40000000u
  ,BL_IMAGE_CODEC_FEATURE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLImageInfoFlags BLImageInfoFlags; enum BLImageInfoFlags {
  BL_IMAGE_INFO_FLAG_NO_FLAGS = 0u,
  BL_IMAGE_INFO_FLAG_PROGRESSIVE = 0x00000001u
  ,BL_IMAGE_INFO_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLImageScaleFilter BLImageScaleFilter; enum BLImageScaleFilter {
  BL_IMAGE_SCALE_FILTER_NONE = 0,
  BL_IMAGE_SCALE_FILTER_NEAREST = 1,
  BL_IMAGE_SCALE_FILTER_BILINEAR = 2,
  BL_IMAGE_SCALE_FILTER_BICUBIC = 3,
  BL_IMAGE_SCALE_FILTER_LANCZOS = 4,
  BL_IMAGE_SCALE_FILTER_MAX_VALUE = 4
  ,BL_IMAGE_SCALE_FILTER_FORCE_UINT = 0xFFFFFFFFu
};
struct BLImageData {
  void* pixelData;
  intptr_t stride;
  BLSizeI size;
  uint32_t format;
  uint32_t flags;
};
struct BLImageInfo {
  BLSizeI size;
  BLSize density;
  uint32_t flags;
  uint16_t depth;
  uint16_t planeCount;
  uint64_t frameCount;
  char format[16];
  char compression[16];
};
struct BLImageCore  {
  BLObjectDetail _d;
};
struct BLImageImpl  {
  void* pixelData;
  intptr_t stride;
  BLSizeI size;
  uint8_t format;
  uint8_t flags;
  uint16_t depth;
  uint8_t reserved[4];
};
__declspec(dllimport) BLResult __cdecl blImageInit(BLImageCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageInitMove(BLImageCore* self, BLImageCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageInitWeak(BLImageCore* self, const BLImageCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageInitAs(BLImageCore* self, int w, int h, BLFormat format) ;
__declspec(dllimport) BLResult __cdecl blImageInitAsFromData(BLImageCore* self, int w, int h, BLFormat format, void* pixelData, intptr_t stride, BLDataAccessFlags accessFlags, BLDestroyExternalDataFunc destroyFunc, void* userData) ;
__declspec(dllimport) BLResult __cdecl blImageDestroy(BLImageCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageReset(BLImageCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageAssignMove(BLImageCore* self, BLImageCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageAssignWeak(BLImageCore* self, const BLImageCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageAssignDeep(BLImageCore* self, const BLImageCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageCreate(BLImageCore* self, int w, int h, BLFormat format) ;
__declspec(dllimport) BLResult __cdecl blImageCreateFromData(BLImageCore* self, int w, int h, BLFormat format, void* pixelData, intptr_t stride, BLDataAccessFlags accessFlags, BLDestroyExternalDataFunc destroyFunc, void* userData) ;
__declspec(dllimport) BLResult __cdecl blImageGetData(const BLImageCore* self, BLImageData* dataOut) ;
__declspec(dllimport) BLResult __cdecl blImageMakeMutable(BLImageCore* self, BLImageData* dataOut) ;
__declspec(dllimport) BLResult __cdecl blImageConvert(BLImageCore* self, BLFormat format) ;
__declspec(dllimport) _Bool __cdecl blImageEquals(const BLImageCore* a, const BLImageCore* b) ;
__declspec(dllimport) BLResult __cdecl blImageScale(BLImageCore* dst, const BLImageCore* src, const BLSizeI* size, BLImageScaleFilter filter) ;
__declspec(dllimport) BLResult __cdecl blImageReadFromFile(BLImageCore* self, const char* fileName, const BLArrayCore* codecs) ;
__declspec(dllimport) BLResult __cdecl blImageReadFromData(BLImageCore* self, const void* data, size_t size, const BLArrayCore* codecs) ;
__declspec(dllimport) BLResult __cdecl blImageWriteToFile(const BLImageCore* self, const char* fileName, const BLImageCodecCore* codec) ;
__declspec(dllimport) BLResult __cdecl blImageWriteToData(const BLImageCore* self, BLArrayCore* dst, const BLImageCodecCore* codec) ;
typedef enum BLPatternQuality BLPatternQuality; enum BLPatternQuality {
  BL_PATTERN_QUALITY_NEAREST = 0,
  BL_PATTERN_QUALITY_BILINEAR = 1,
  BL_PATTERN_QUALITY_MAX_VALUE = 1
  ,BL_PATTERN_QUALITY_FORCE_UINT = 0xFFFFFFFFu
};
struct BLPatternCore  {
  BLObjectDetail _d;
};
struct BLPatternImpl  {
  BLImageCore image;
  BLRectI area;
  BLMatrix2D transform;
};
__declspec(dllimport) BLResult __cdecl blPatternInit(BLPatternCore* self) ;
__declspec(dllimport) BLResult __cdecl blPatternInitMove(BLPatternCore* self, BLPatternCore* other) ;
__declspec(dllimport) BLResult __cdecl blPatternInitWeak(BLPatternCore* self, const BLPatternCore* other) ;
__declspec(dllimport) BLResult __cdecl blPatternInitAs(BLPatternCore* self, const BLImageCore* image, const BLRectI* area, BLExtendMode extendMode, const BLMatrix2D* transform) ;
__declspec(dllimport) BLResult __cdecl blPatternDestroy(BLPatternCore* self) ;
__declspec(dllimport) BLResult __cdecl blPatternReset(BLPatternCore* self) ;
__declspec(dllimport) BLResult __cdecl blPatternAssignMove(BLPatternCore* self, BLPatternCore* other) ;
__declspec(dllimport) BLResult __cdecl blPatternAssignWeak(BLPatternCore* self, const BLPatternCore* other) ;
__declspec(dllimport) BLResult __cdecl blPatternAssignDeep(BLPatternCore* self, const BLPatternCore* other) ;
__declspec(dllimport) BLResult __cdecl blPatternCreate(BLPatternCore* self, const BLImageCore* image, const BLRectI* area, BLExtendMode extendMode, const BLMatrix2D* transform) ;
__declspec(dllimport) BLResult __cdecl blPatternGetImage(const BLPatternCore* self, BLImageCore* image) ;
__declspec(dllimport) BLResult __cdecl blPatternSetImage(BLPatternCore* self, const BLImageCore* image, const BLRectI* area) ;
__declspec(dllimport) BLResult __cdecl blPatternResetImage(BLPatternCore* self) ;
__declspec(dllimport) BLResult __cdecl blPatternGetArea(const BLPatternCore* self, BLRectI* areaOut) ;
__declspec(dllimport) BLResult __cdecl blPatternSetArea(BLPatternCore* self, const BLRectI* area) ;
__declspec(dllimport) BLResult __cdecl blPatternResetArea(BLPatternCore* self) ;
__declspec(dllimport) BLExtendMode __cdecl blPatternGetExtendMode(const BLPatternCore* self)  ;
__declspec(dllimport) BLResult __cdecl blPatternSetExtendMode(BLPatternCore* self, BLExtendMode extendMode) ;
__declspec(dllimport) BLResult __cdecl blPatternGetTransform(const BLPatternCore* self, BLMatrix2D* transformOut) ;
__declspec(dllimport) BLTransformType __cdecl blPatternGetTransformType(const BLPatternCore* self)  ;
__declspec(dllimport) BLResult __cdecl blPatternApplyTransformOp(BLPatternCore* self, BLTransformOp opType, const void* opData) ;
__declspec(dllimport) _Bool __cdecl blPatternEquals(const BLPatternCore* a, const BLPatternCore* b) ;
struct BLVarCore  {
  BLObjectDetail _d;
};
__declspec(dllimport) BLResult __cdecl blVarInitType(BLUnknown* self, BLObjectType type) ;
__declspec(dllimport) BLResult __cdecl blVarInitNull(BLUnknown* self) ;
__declspec(dllimport) BLResult __cdecl blVarInitBool(BLUnknown* self, _Bool value) ;
__declspec(dllimport) BLResult __cdecl blVarInitInt32(BLUnknown* self, int32_t value) ;
__declspec(dllimport) BLResult __cdecl blVarInitInt64(BLUnknown* self, int64_t value) ;
__declspec(dllimport) BLResult __cdecl blVarInitUInt32(BLUnknown* self, uint32_t value) ;
__declspec(dllimport) BLResult __cdecl blVarInitUInt64(BLUnknown* self, uint64_t value) ;
__declspec(dllimport) BLResult __cdecl blVarInitDouble(BLUnknown* self, double value) ;
__declspec(dllimport) BLResult __cdecl blVarInitRgba(BLUnknown* self, const BLRgba* rgba) ;
__declspec(dllimport) BLResult __cdecl blVarInitRgba32(BLUnknown* self, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blVarInitRgba64(BLUnknown* self, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blVarInitMove(BLUnknown* self, BLUnknown* other) ;
__declspec(dllimport) BLResult __cdecl blVarInitWeak(BLUnknown* self, const BLUnknown* other) ;
__declspec(dllimport) BLResult __cdecl blVarDestroy(BLUnknown* self) ;
__declspec(dllimport) BLResult __cdecl blVarReset(BLUnknown* self) ;
__declspec(dllimport) BLResult __cdecl blVarAssignNull(BLUnknown* self) ;
__declspec(dllimport) BLResult __cdecl blVarAssignBool(BLUnknown* self, _Bool value) ;
__declspec(dllimport) BLResult __cdecl blVarAssignInt32(BLUnknown* self, int32_t value) ;
__declspec(dllimport) BLResult __cdecl blVarAssignInt64(BLUnknown* self, int64_t value) ;
__declspec(dllimport) BLResult __cdecl blVarAssignUInt32(BLUnknown* self, uint32_t value) ;
__declspec(dllimport) BLResult __cdecl blVarAssignUInt64(BLUnknown* self, uint64_t value) ;
__declspec(dllimport) BLResult __cdecl blVarAssignDouble(BLUnknown* self, double value) ;
__declspec(dllimport) BLResult __cdecl blVarAssignRgba(BLUnknown* self, const BLRgba* rgba) ;
__declspec(dllimport) BLResult __cdecl blVarAssignRgba32(BLUnknown* self, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blVarAssignRgba64(BLUnknown* self, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blVarAssignMove(BLUnknown* self, BLUnknown* other) ;
__declspec(dllimport) BLResult __cdecl blVarAssignWeak(BLUnknown* self, const BLUnknown* other) ;
__declspec(dllimport) BLObjectType __cdecl blVarGetType(const BLUnknown* self)  ;
__declspec(dllimport) BLResult __cdecl blVarToBool(const BLUnknown* self, _Bool* out) ;
__declspec(dllimport) BLResult __cdecl blVarToInt32(const BLUnknown* self, int32_t* out) ;
__declspec(dllimport) BLResult __cdecl blVarToInt64(const BLUnknown* self, int64_t* out) ;
__declspec(dllimport) BLResult __cdecl blVarToUInt32(const BLUnknown* self, uint32_t* out) ;
__declspec(dllimport) BLResult __cdecl blVarToUInt64(const BLUnknown* self, uint64_t* out) ;
__declspec(dllimport) BLResult __cdecl blVarToDouble(const BLUnknown* self, double* out) ;
__declspec(dllimport) BLResult __cdecl blVarToRgba(const BLUnknown* self, BLRgba* out) ;
__declspec(dllimport) BLResult __cdecl blVarToRgba32(const BLUnknown* self, uint32_t* out) ;
__declspec(dllimport) BLResult __cdecl blVarToRgba64(const BLUnknown* self, uint64_t* out) ;
__declspec(dllimport) _Bool __cdecl blVarEquals(const BLUnknown* a, const BLUnknown* b)  ;
__declspec(dllimport) _Bool __cdecl blVarEqualsNull(const BLUnknown* self)  ;
__declspec(dllimport) _Bool __cdecl blVarEqualsBool(const BLUnknown* self, _Bool value)  ;
__declspec(dllimport) _Bool __cdecl blVarEqualsInt64(const BLUnknown* self, int64_t value)  ;
__declspec(dllimport) _Bool __cdecl blVarEqualsUInt64(const BLUnknown* self, uint64_t value)  ;
__declspec(dllimport) _Bool __cdecl blVarEqualsDouble(const BLUnknown* self, double value)  ;
__declspec(dllimport) _Bool __cdecl blVarEqualsRgba(const BLUnknown* self, const BLRgba* rgba)  ;
__declspec(dllimport) _Bool __cdecl blVarEqualsRgba32(const BLUnknown* self, uint32_t rgba32)  ;
__declspec(dllimport) _Bool __cdecl blVarEqualsRgba64(const BLUnknown* self, uint64_t rgba64)  ;
__declspec(dllimport) _Bool __cdecl blVarStrictEquals(const BLUnknown* a, const BLUnknown* b)  ;
typedef enum BLContextType BLContextType; enum BLContextType {
  BL_CONTEXT_TYPE_NONE = 0,
  BL_CONTEXT_TYPE_DUMMY = 1,
  BL_CONTEXT_TYPE_RASTER = 3,
  BL_CONTEXT_TYPE_MAX_VALUE = 3
  ,BL_CONTEXT_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLContextHint BLContextHint; enum BLContextHint {
  BL_CONTEXT_HINT_RENDERING_QUALITY = 0,
  BL_CONTEXT_HINT_GRADIENT_QUALITY = 1,
  BL_CONTEXT_HINT_PATTERN_QUALITY = 2,
  BL_CONTEXT_HINT_MAX_VALUE = 7
  ,BL_CONTEXT_HINT_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLContextStyleSlot BLContextStyleSlot; enum BLContextStyleSlot {
  BL_CONTEXT_STYLE_SLOT_FILL = 0,
  BL_CONTEXT_STYLE_SLOT_STROKE = 1,
  BL_CONTEXT_STYLE_SLOT_MAX_VALUE = 1
  ,BL_CONTEXT_STYLE_SLOT_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLContextRenderTextOp BLContextRenderTextOp; enum BLContextRenderTextOp {
  BL_CONTEXT_RENDER_TEXT_OP_UTF8 = BL_TEXT_ENCODING_UTF8,
  BL_CONTEXT_RENDER_TEXT_OP_UTF16 = BL_TEXT_ENCODING_UTF16,
  BL_CONTEXT_RENDER_TEXT_OP_UTF32 = BL_TEXT_ENCODING_UTF32,
  BL_CONTEXT_RENDER_TEXT_OP_LATIN1 = BL_TEXT_ENCODING_LATIN1,
  BL_CONTEXT_RENDER_TEXT_OP_WCHAR = BL_TEXT_ENCODING_WCHAR,
  BL_CONTEXT_RENDER_TEXT_OP_GLYPH_RUN = 4,
  BL_CONTEXT_RENDER_TEXT_OP_MAX_VALUE = 4
  ,BL_CONTEXT_RENDER_TEXT_OP_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLContextFlushFlags BLContextFlushFlags; enum BLContextFlushFlags {
  BL_CONTEXT_FLUSH_NO_FLAGS = 0u,
  BL_CONTEXT_FLUSH_SYNC = 0x80000000u
  ,BL_CONTEXT_FLUSH_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLContextCreateFlags BLContextCreateFlags; enum BLContextCreateFlags {
  BL_CONTEXT_CREATE_NO_FLAGS = 0u,
  BL_CONTEXT_CREATE_FLAG_DISABLE_JIT = 0x00000001u,
  BL_CONTEXT_CREATE_FLAG_FALLBACK_TO_SYNC = 0x00100000u,
  BL_CONTEXT_CREATE_FLAG_ISOLATED_THREAD_POOL = 0x01000000u,
  BL_CONTEXT_CREATE_FLAG_ISOLATED_JIT_RUNTIME = 0x02000000u,
  BL_CONTEXT_CREATE_FLAG_ISOLATED_JIT_LOGGING = 0x04000000u,
  BL_CONTEXT_CREATE_FLAG_OVERRIDE_CPU_FEATURES = 0x08000000u
  ,BL_CONTEXT_CREATE_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLContextErrorFlags BLContextErrorFlags; enum BLContextErrorFlags {
  BL_CONTEXT_ERROR_NO_FLAGS = 0u,
  BL_CONTEXT_ERROR_FLAG_INVALID_VALUE = 0x00000001u,
  BL_CONTEXT_ERROR_FLAG_INVALID_STATE = 0x00000002u,
  BL_CONTEXT_ERROR_FLAG_INVALID_GEOMETRY = 0x00000004u,
  BL_CONTEXT_ERROR_FLAG_INVALID_GLYPH = 0x00000008u,
  BL_CONTEXT_ERROR_FLAG_INVALID_FONT = 0x00000010u,
  BL_CONTEXT_ERROR_FLAG_THREAD_POOL_EXHAUSTED = 0x20000000u,
  BL_CONTEXT_ERROR_FLAG_OUT_OF_MEMORY = 0x40000000u,
  BL_CONTEXT_ERROR_FLAG_UNKNOWN_ERROR = 0x80000000u
  ,BL_CONTEXT_ERROR_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLContextStyleSwapMode BLContextStyleSwapMode; enum BLContextStyleSwapMode {
  BL_CONTEXT_STYLE_SWAP_MODE_STYLES = 0,
  BL_CONTEXT_STYLE_SWAP_MODE_STYLES_WITH_ALPHA = 1,
  BL_CONTEXT_STYLE_SWAP_MODE_MAX_VALUE = 1
  ,BL_CONTEXT_STYLE_SWAP_MODE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLContextStyleTransformMode BLContextStyleTransformMode; enum BLContextStyleTransformMode {
  BL_CONTEXT_STYLE_TRANSFORM_MODE_USER = 0,
  BL_CONTEXT_STYLE_TRANSFORM_MODE_META = 1,
  BL_CONTEXT_STYLE_TRANSFORM_MODE_NONE = 2,
  BL_CONTEXT_STYLE_TRANSFORM_MODE_MAX_VALUE = 2
  ,BL_CONTEXT_STYLE_TRANSFORM_MODE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLClipMode BLClipMode; enum BLClipMode {
  BL_CLIP_MODE_ALIGNED_RECT = 0,
  BL_CLIP_MODE_UNALIGNED_RECT = 1,
  BL_CLIP_MODE_MASK = 2,
  BL_CLIP_MODE_COUNT = 3
  ,BL_CLIP_MODE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLCompOp BLCompOp; enum BLCompOp {
  BL_COMP_OP_SRC_OVER = 0,
  BL_COMP_OP_SRC_COPY = 1,
  BL_COMP_OP_SRC_IN = 2,
  BL_COMP_OP_SRC_OUT = 3,
  BL_COMP_OP_SRC_ATOP = 4,
  BL_COMP_OP_DST_OVER = 5,
  BL_COMP_OP_DST_COPY = 6,
  BL_COMP_OP_DST_IN = 7,
  BL_COMP_OP_DST_OUT = 8,
  BL_COMP_OP_DST_ATOP = 9,
  BL_COMP_OP_XOR = 10,
  BL_COMP_OP_CLEAR = 11,
  BL_COMP_OP_PLUS = 12,
  BL_COMP_OP_MINUS = 13,
  BL_COMP_OP_MODULATE = 14,
  BL_COMP_OP_MULTIPLY = 15,
  BL_COMP_OP_SCREEN = 16,
  BL_COMP_OP_OVERLAY = 17,
  BL_COMP_OP_DARKEN = 18,
  BL_COMP_OP_LIGHTEN = 19,
  BL_COMP_OP_COLOR_DODGE = 20,
  BL_COMP_OP_COLOR_BURN = 21,
  BL_COMP_OP_LINEAR_BURN = 22,
  BL_COMP_OP_LINEAR_LIGHT = 23,
  BL_COMP_OP_PIN_LIGHT = 24,
  BL_COMP_OP_HARD_LIGHT = 25,
  BL_COMP_OP_SOFT_LIGHT = 26,
  BL_COMP_OP_DIFFERENCE = 27,
  BL_COMP_OP_EXCLUSION = 28,
  BL_COMP_OP_MAX_VALUE = 28
  ,BL_COMP_OP_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLRenderingQuality BLRenderingQuality; enum BLRenderingQuality {
  BL_RENDERING_QUALITY_ANTIALIAS = 0,
  BL_RENDERING_QUALITY_MAX_VALUE = 0
  ,BL_RENDERING_QUALITY_FORCE_UINT = 0xFFFFFFFFu
};
struct BLContextCreateInfo {
  uint32_t flags;
  uint32_t threadCount;
  uint32_t cpuFeatures;
  uint32_t commandQueueLimit;
  uint32_t savedStateLimit;
  BLPointI pixelOrigin;
  uint32_t reserved[1];
};
struct BLContextCookie {
  uint64_t data[2];
};
struct BLContextHints {
  union {
    struct {
      uint8_t renderingQuality;
      uint8_t gradientQuality;
      uint8_t patternQuality;
    };
    uint8_t hints[BL_CONTEXT_HINT_MAX_VALUE + 1];
  };
};
struct BLContextCore  {
  BLObjectDetail _d;
};
struct BLContextVirt  {
  BLObjectVirtBase base;
  BLResult (__cdecl* applyTransformOp        )(BLContextImpl* impl, BLTransformOp opType, const void* opData) ;
  BLResult (__cdecl* fillRectI               )(BLContextImpl* impl, const BLRectI* rect) ;
  BLResult (__cdecl* fillRectIRgba32         )(BLContextImpl* impl, const BLRectI* rect, uint32_t rgba32) ;
  BLResult (__cdecl* fillRectIExt            )(BLContextImpl* impl, const BLRectI* rect, const BLObjectCore* style) ;
  BLResult (__cdecl* fillRectD               )(BLContextImpl* impl, const BLRect* rect) ;
  BLResult (__cdecl* fillRectDRgba32         )(BLContextImpl* impl, const BLRect* rect, uint32_t rgba32) ;
  BLResult (__cdecl* fillRectDExt            )(BLContextImpl* impl, const BLRect* rect, const BLObjectCore* style) ;
  BLResult (__cdecl* fillPathD               )(BLContextImpl* impl, const BLPoint* origin, const BLPathCore* path) ;
  BLResult (__cdecl* fillPathDRgba32         )(BLContextImpl* impl, const BLPoint* origin, const BLPathCore* path, uint32_t rgba32) ;
  BLResult (__cdecl* fillPathDExt            )(BLContextImpl* impl, const BLPoint* origin, const BLPathCore* path, const BLObjectCore* style) ;
  BLResult (__cdecl* blitImageI              )(BLContextImpl* impl, const BLPointI* origin, const BLImageCore* img, const BLRectI* imgArea) ;
  BLResult (__cdecl* blitScaledImageI        )(BLContextImpl* impl, const BLRectI* rect, const BLImageCore* img, const BLRectI* imgArea) ;
  BLResult (__cdecl* flush                   )(BLContextImpl* impl, BLContextFlushFlags flags) ;
  BLResult (__cdecl* save                    )(BLContextImpl* impl, BLContextCookie* cookie) ;
  BLResult (__cdecl* restore                 )(BLContextImpl* impl, const BLContextCookie* cookie) ;
  BLResult (__cdecl* userToMeta              )(BLContextImpl* impl) ;
  BLResult (__cdecl* setHint                 )(BLContextImpl* impl, BLContextHint hintType, uint32_t value) ;
  BLResult (__cdecl* setHints                )(BLContextImpl* impl, const BLContextHints* hints) ;
  BLResult (__cdecl* setFlattenMode          )(BLContextImpl* impl, BLFlattenMode mode) ;
  BLResult (__cdecl* setFlattenTolerance     )(BLContextImpl* impl, double tolerance) ;
  BLResult (__cdecl* setApproximationOptions )(BLContextImpl* impl, const BLApproximationOptions* options) ;
  BLResult (__cdecl* getStyle                )(const BLContextImpl* impl, BLContextStyleSlot slot, _Bool transformed, BLVarCore* styleOut) ;
  BLResult (__cdecl* setStyle                )(BLContextImpl* impl, BLContextStyleSlot slot, const BLObjectCore* style, BLContextStyleTransformMode transformMode) ;
  BLResult (__cdecl* setStyleRgba            )(BLContextImpl* impl, BLContextStyleSlot slot, const BLRgba* rgba) ;
  BLResult (__cdecl* setStyleRgba32          )(BLContextImpl* impl, BLContextStyleSlot slot, uint32_t rgba32) ;
  BLResult (__cdecl* setStyleRgba64          )(BLContextImpl* impl, BLContextStyleSlot slot, uint64_t rgba64) ;
  BLResult (__cdecl* disableStyle            )(BLContextImpl* impl, BLContextStyleSlot slot) ;
  BLResult (__cdecl* setStyleAlpha           )(BLContextImpl* impl, BLContextStyleSlot slot, double alpha) ;
  BLResult (__cdecl* swapStyles              )(BLContextImpl* impl, BLContextStyleSwapMode mode) ;
  BLResult (__cdecl* setGlobalAlpha          )(BLContextImpl* impl, double alpha) ;
  BLResult (__cdecl* setCompOp               )(BLContextImpl* impl, BLCompOp compOp) ;
  BLResult (__cdecl* setFillRule             )(BLContextImpl* impl, BLFillRule fillRule) ;
  BLResult (__cdecl* setStrokeWidth          )(BLContextImpl* impl, double width) ;
  BLResult (__cdecl* setStrokeMiterLimit     )(BLContextImpl* impl, double miterLimit) ;
  BLResult (__cdecl* setStrokeCap            )(BLContextImpl* impl, BLStrokeCapPosition position, BLStrokeCap strokeCap) ;
  BLResult (__cdecl* setStrokeCaps           )(BLContextImpl* impl, BLStrokeCap strokeCap) ;
  BLResult (__cdecl* setStrokeJoin           )(BLContextImpl* impl, BLStrokeJoin strokeJoin) ;
  BLResult (__cdecl* setStrokeDashOffset     )(BLContextImpl* impl, double dashOffset) ;
  BLResult (__cdecl* setStrokeDashArray      )(BLContextImpl* impl, const BLArrayCore* dashArray) ;
  BLResult (__cdecl* setStrokeTransformOrder )(BLContextImpl* impl, BLStrokeTransformOrder transformOrder) ;
  BLResult (__cdecl* setStrokeOptions        )(BLContextImpl* impl, const BLStrokeOptionsCore* options) ;
  BLResult (__cdecl* clipToRectI             )(BLContextImpl* impl, const BLRectI* rect) ;
  BLResult (__cdecl* clipToRectD             )(BLContextImpl* impl, const BLRect* rect) ;
  BLResult (__cdecl* restoreClipping         )(BLContextImpl* impl) ;
  BLResult (__cdecl* clearAll                )(BLContextImpl* impl) ;
  BLResult (__cdecl* clearRectI              )(BLContextImpl* impl, const BLRectI* rect) ;
  BLResult (__cdecl* clearRectD              )(BLContextImpl* impl, const BLRect* rect) ;
  BLResult (__cdecl* fillAll                 )(BLContextImpl* impl) ;
  BLResult (__cdecl* fillAllRgba32           )(BLContextImpl* impl, uint32_t rgba32) ;
  BLResult (__cdecl* fillAllExt              )(BLContextImpl* impl, const BLObjectCore* style) ;
  BLResult (__cdecl* fillGeometry            )(BLContextImpl* impl, BLGeometryType type, const void* data) ;
  BLResult (__cdecl* fillGeometryRgba32      )(BLContextImpl* impl, BLGeometryType type, const void* data, uint32_t rgba32) ;
  BLResult (__cdecl* fillGeometryExt         )(BLContextImpl* impl, BLGeometryType type, const void* data, const BLObjectCore* style) ;
  BLResult (__cdecl* fillTextOpI             )(BLContextImpl* self, const BLPointI* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data) ;
  BLResult (__cdecl* fillTextOpIRgba32       )(BLContextImpl* self, const BLPointI* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data, uint32_t rgba32) ;
  BLResult (__cdecl* fillTextOpIExt          )(BLContextImpl* self, const BLPointI* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data, const BLObjectCore* style) ;
  BLResult (__cdecl* fillTextOpD             )(BLContextImpl* self, const BLPoint* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data) ;
  BLResult (__cdecl* fillTextOpDRgba32       )(BLContextImpl* self, const BLPoint* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data, uint32_t rgba32) ;
  BLResult (__cdecl* fillTextOpDExt          )(BLContextImpl* self, const BLPoint* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data, const BLObjectCore* style) ;
  BLResult (__cdecl* fillMaskI               )(BLContextImpl* impl, const BLPointI* origin, const BLImageCore* mask, const BLRectI* maskArea) ;
  BLResult (__cdecl* fillMaskIRgba32         )(BLContextImpl* impl, const BLPointI* origin, const BLImageCore* mask, const BLRectI* maskArea, uint32_t rgba32) ;
  BLResult (__cdecl* fillMaskIExt            )(BLContextImpl* impl, const BLPointI* origin, const BLImageCore* mask, const BLRectI* maskArea, const BLObjectCore* style) ;
  BLResult (__cdecl* fillMaskD               )(BLContextImpl* impl, const BLPoint* origin, const BLImageCore* mask, const BLRectI* maskArea) ;
  BLResult (__cdecl* fillMaskDRgba32         )(BLContextImpl* impl, const BLPoint* origin, const BLImageCore* mask, const BLRectI* maskArea, uint32_t rgba32) ;
  BLResult (__cdecl* fillMaskDExt            )(BLContextImpl* impl, const BLPoint* origin, const BLImageCore* mask, const BLRectI* maskArea, const BLObjectCore* style) ;
  BLResult (__cdecl* strokePathD             )(BLContextImpl* impl, const BLPoint* origin, const BLPathCore* path) ;
  BLResult (__cdecl* strokePathDRgba32       )(BLContextImpl* impl, const BLPoint* origin, const BLPathCore* path, uint32_t rgba32) ;
  BLResult (__cdecl* strokePathDExt          )(BLContextImpl* impl, const BLPoint* origin, const BLPathCore* path, const BLObjectCore* style) ;
  BLResult (__cdecl* strokeGeometry          )(BLContextImpl* impl, BLGeometryType type, const void* data) ;
  BLResult (__cdecl* strokeGeometryRgba32    )(BLContextImpl* impl, BLGeometryType type, const void* data, uint32_t rgba32) ;
  BLResult (__cdecl* strokeGeometryExt       )(BLContextImpl* impl, BLGeometryType type, const void* data, const BLObjectCore* style) ;
  BLResult (__cdecl* strokeTextOpI           )(BLContextImpl* self, const BLPointI* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data) ;
  BLResult (__cdecl* strokeTextOpIRgba32     )(BLContextImpl* self, const BLPointI* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data, uint32_t rgba32) ;
  BLResult (__cdecl* strokeTextOpIExt        )(BLContextImpl* self, const BLPointI* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data, const BLObjectCore* style) ;
  BLResult (__cdecl* strokeTextOpD           )(BLContextImpl* self, const BLPoint* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data) ;
  BLResult (__cdecl* strokeTextOpDRgba32     )(BLContextImpl* self, const BLPoint* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data, uint32_t rgba32) ;
  BLResult (__cdecl* strokeTextOpDExt        )(BLContextImpl* self, const BLPoint* origin, const BLFontCore* font, BLContextRenderTextOp op, const void* data, const BLObjectCore* style) ;
  BLResult (__cdecl* blitImageD              )(BLContextImpl* impl, const BLPoint* origin, const BLImageCore* img, const BLRectI* imgArea) ;
  BLResult (__cdecl* blitScaledImageD        )(BLContextImpl* impl, const BLRect* rect, const BLImageCore* img, const BLRectI* imgArea) ;
};
struct BLContextState {
  BLImageCore* targetImage;
  BLSize targetSize;
  BLContextHints hints;
  uint8_t compOp;
  uint8_t fillRule;
  uint8_t styleType[2];
  uint32_t savedStateCount;
  double globalAlpha;
  double styleAlpha[2];
  BLStrokeOptionsCore strokeOptions;
  BLApproximationOptions approximationOptions;
  BLMatrix2D metaTransform;
  BLMatrix2D userTransform;
  BLMatrix2D finalTransform;
};
struct BLContextImpl  {
  const BLContextVirt* virt;
  const BLContextState* state;
  uint32_t contextType;
};
__declspec(dllimport) BLResult __cdecl blContextInit(BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextInitMove(BLContextCore* self, BLContextCore* other) ;
__declspec(dllimport) BLResult __cdecl blContextInitWeak(BLContextCore* self, const BLContextCore* other) ;
__declspec(dllimport) BLResult __cdecl blContextInitAs(BLContextCore* self, BLImageCore* image, const BLContextCreateInfo* cci) ;
__declspec(dllimport) BLResult __cdecl blContextDestroy(BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextReset(BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextAssignMove(BLContextCore* self, BLContextCore* other) ;
__declspec(dllimport) BLResult __cdecl blContextAssignWeak(BLContextCore* self, const BLContextCore* other) ;
__declspec(dllimport) BLContextType __cdecl blContextGetType(const BLContextCore* self)  ;
__declspec(dllimport) BLResult __cdecl blContextGetTargetSize(const BLContextCore* self, BLSize* targetSizeOut) ;
__declspec(dllimport) BLImageCore* __cdecl blContextGetTargetImage(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextBegin(BLContextCore* self, BLImageCore* image, const BLContextCreateInfo* cci) ;
__declspec(dllimport) BLResult __cdecl blContextEnd(BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextFlush(BLContextCore* self, BLContextFlushFlags flags) ;
__declspec(dllimport) BLResult __cdecl blContextSave(BLContextCore* self, BLContextCookie* cookie) ;
__declspec(dllimport) BLResult __cdecl blContextRestore(BLContextCore* self, const BLContextCookie* cookie) ;
__declspec(dllimport) BLResult __cdecl blContextGetMetaTransform(const BLContextCore* self, BLMatrix2D* transformOut) ;
__declspec(dllimport) BLResult __cdecl blContextGetUserTransform(const BLContextCore* self, BLMatrix2D* transformOut) ;
__declspec(dllimport) BLResult __cdecl blContextGetFinalTransform(const BLContextCore* self, BLMatrix2D* transformOut) ;
__declspec(dllimport) BLResult __cdecl blContextUserToMeta(BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextApplyTransformOp(BLContextCore* self, BLTransformOp opType, const void* opData) ;
__declspec(dllimport) uint32_t __cdecl blContextGetHint(const BLContextCore* self, BLContextHint hintType) ;
__declspec(dllimport) BLResult __cdecl blContextSetHint(BLContextCore* self, BLContextHint hintType, uint32_t value) ;
__declspec(dllimport) BLResult __cdecl blContextGetHints(const BLContextCore* self, BLContextHints* hintsOut) ;
__declspec(dllimport) BLResult __cdecl blContextSetHints(BLContextCore* self, const BLContextHints* hints) ;
__declspec(dllimport) BLResult __cdecl blContextSetFlattenMode(BLContextCore* self, BLFlattenMode mode) ;
__declspec(dllimport) BLResult __cdecl blContextSetFlattenTolerance(BLContextCore* self, double tolerance) ;
__declspec(dllimport) BLResult __cdecl blContextSetApproximationOptions(BLContextCore* self, const BLApproximationOptions* options) ;
__declspec(dllimport) BLResult __cdecl blContextGetFillStyle(const BLContextCore* self, BLVarCore* styleOut) ;
__declspec(dllimport) BLResult __cdecl blContextGetTransformedFillStyle(const BLContextCore* self, BLVarCore* styleOut) ;
__declspec(dllimport) BLResult __cdecl blContextSetFillStyle(BLContextCore* self, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextSetFillStyleWithMode(BLContextCore* self, const BLUnknown* style, BLContextStyleTransformMode transformMode) ;
__declspec(dllimport) BLResult __cdecl blContextSetFillStyleRgba(BLContextCore* self, const BLRgba* rgba) ;
__declspec(dllimport) BLResult __cdecl blContextSetFillStyleRgba32(BLContextCore* self, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextSetFillStyleRgba64(BLContextCore* self, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextDisableFillStyle(BLContextCore* self) ;
__declspec(dllimport) double __cdecl blContextGetFillAlpha(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetFillAlpha(BLContextCore* self, double alpha) ;
__declspec(dllimport) BLResult __cdecl blContextGetStrokeStyle(const BLContextCore* self, BLVarCore* styleOut) ;
__declspec(dllimport) BLResult __cdecl blContextGetTransformedStrokeStyle(const BLContextCore* self, BLVarCore* styleOut) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeStyle(BLContextCore* self, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeStyleWithMode(BLContextCore* self, const BLUnknown* style, BLContextStyleTransformMode transformMode) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeStyleRgba(BLContextCore* self, const BLRgba* rgba) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeStyleRgba32(BLContextCore* self, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeStyleRgba64(BLContextCore* self, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextDisableStrokeStyle(BLContextCore* self) ;
__declspec(dllimport) double __cdecl blContextGetStrokeAlpha(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeAlpha(BLContextCore* self, double alpha) ;
__declspec(dllimport) BLResult __cdecl blContextSwapStyles(BLContextCore* self, BLContextStyleSwapMode mode) ;
__declspec(dllimport) double __cdecl blContextGetGlobalAlpha(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetGlobalAlpha(BLContextCore* self, double alpha) ;
__declspec(dllimport) BLCompOp __cdecl blContextGetCompOp(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetCompOp(BLContextCore* self, BLCompOp compOp) ;
__declspec(dllimport) BLFillRule __cdecl blContextGetFillRule(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetFillRule(BLContextCore* self, BLFillRule fillRule) ;
__declspec(dllimport) double __cdecl blContextGetStrokeWidth(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeWidth(BLContextCore* self, double width) ;
__declspec(dllimport) double __cdecl blContextGetStrokeMiterLimit(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeMiterLimit(BLContextCore* self, double miterLimit) ;
__declspec(dllimport) BLStrokeCap __cdecl blContextGetStrokeCap(const BLContextCore* self, BLStrokeCapPosition position) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeCap(BLContextCore* self, BLStrokeCapPosition position, BLStrokeCap strokeCap) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeCaps(BLContextCore* self, BLStrokeCap strokeCap) ;
__declspec(dllimport) BLStrokeJoin __cdecl blContextGetStrokeJoin(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeJoin(BLContextCore* self, BLStrokeJoin strokeJoin) ;
__declspec(dllimport) BLStrokeTransformOrder __cdecl blContextGetStrokeTransformOrder(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeTransformOrder(BLContextCore* self, BLStrokeTransformOrder transformOrder) ;
__declspec(dllimport) double __cdecl blContextGetStrokeDashOffset(const BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeDashOffset(BLContextCore* self, double dashOffset) ;
__declspec(dllimport) BLResult __cdecl blContextGetStrokeDashArray(const BLContextCore* self, BLArrayCore* dashArrayOut) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeDashArray(BLContextCore* self, const BLArrayCore* dashArray) ;
__declspec(dllimport) BLResult __cdecl blContextGetStrokeOptions(const BLContextCore* self, BLStrokeOptionsCore* options) ;
__declspec(dllimport) BLResult __cdecl blContextSetStrokeOptions(BLContextCore* self, const BLStrokeOptionsCore* options) ;
__declspec(dllimport) BLResult __cdecl blContextClipToRectI(BLContextCore* self, const BLRectI* rect) ;
__declspec(dllimport) BLResult __cdecl blContextClipToRectD(BLContextCore* self, const BLRect* rect) ;
__declspec(dllimport) BLResult __cdecl blContextRestoreClipping(BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextClearAll(BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextClearRectI(BLContextCore* self, const BLRectI* rect) ;
__declspec(dllimport) BLResult __cdecl blContextClearRectD(BLContextCore* self, const BLRect* rect) ;
__declspec(dllimport) BLResult __cdecl blContextFillAll(BLContextCore* self) ;
__declspec(dllimport) BLResult __cdecl blContextFillAllRgba32(BLContextCore* self, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillAllRgba64(BLContextCore* self, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillAllExt(BLContextCore* self, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillRectI(BLContextCore* self, const BLRectI* rect) ;
__declspec(dllimport) BLResult __cdecl blContextFillRectIRgba32(BLContextCore* self, const BLRectI* rect, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillRectIRgba64(BLContextCore* self, const BLRectI* rect, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillRectIExt(BLContextCore* self, const BLRectI* rect, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillRectD(BLContextCore* self, const BLRect* rect) ;
__declspec(dllimport) BLResult __cdecl blContextFillRectDRgba32(BLContextCore* self, const BLRect* rect, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillRectDRgba64(BLContextCore* self, const BLRect* rect, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillRectDExt(BLContextCore* self, const BLRect* rect, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillPathD(BLContextCore* self, const BLPoint* origin, const BLPathCore* path) ;
__declspec(dllimport) BLResult __cdecl blContextFillPathDRgba32(BLContextCore* self, const BLPoint* origin, const BLPathCore* path, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillPathDRgba64(BLContextCore* self, const BLPoint* origin, const BLPathCore* path, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillPathDExt(BLContextCore* self, const BLPoint* origin, const BLPathCore* path, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillGeometry(BLContextCore* self, BLGeometryType type, const void* data) ;
__declspec(dllimport) BLResult __cdecl blContextFillGeometryRgba32(BLContextCore* self, BLGeometryType type, const void* data, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillGeometryRgba64(BLContextCore* self, BLGeometryType type, const void* data, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillGeometryExt(BLContextCore* self, BLGeometryType type, const void* data, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf8TextI(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const char* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf8TextIRgba32(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const char* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf8TextIRgba64(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const char* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf8TextIExt(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const char* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf8TextD(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const char* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf8TextDRgba32(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const char* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf8TextDRgba64(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const char* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf8TextDExt(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const char* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf16TextI(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint16_t* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf16TextIRgba32(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint16_t* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf16TextIRgba64(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint16_t* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf16TextIExt(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint16_t* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf16TextD(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint16_t* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf16TextDRgba32(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint16_t* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf16TextDRgba64(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint16_t* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf16TextDExt(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint16_t* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf32TextI(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint32_t* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf32TextIRgba32(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint32_t* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf32TextIRgba64(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint32_t* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf32TextIExt(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint32_t* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf32TextD(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint32_t* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf32TextDRgba32(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint32_t* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf32TextDRgba64(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint32_t* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillUtf32TextDExt(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint32_t* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillGlyphRunI(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const BLGlyphRun* glyphRun) ;
__declspec(dllimport) BLResult __cdecl blContextFillGlyphRunIRgba32(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillGlyphRunIRgba64(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillGlyphRunIExt(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillGlyphRunD(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const BLGlyphRun* glyphRun) ;
__declspec(dllimport) BLResult __cdecl blContextFillGlyphRunDRgba32(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillGlyphRunDRgba64(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillGlyphRunDExt(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillMaskI(BLContextCore* self, const BLPointI* origin, const BLImageCore* mask, const BLRectI* maskArea) ;
__declspec(dllimport) BLResult __cdecl blContextFillMaskIRgba32(BLContextCore* self, const BLPointI* origin, const BLImageCore* mask, const BLRectI* maskArea, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillMaskIRgba64(BLContextCore* self, const BLPointI* origin, const BLImageCore* mask, const BLRectI* maskArea, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillMaskIExt(BLContextCore* self, const BLPointI* origin, const BLImageCore* mask, const BLRectI* maskArea, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextFillMaskD(BLContextCore* self, const BLPoint* origin, const BLImageCore* mask, const BLRectI* maskArea) ;
__declspec(dllimport) BLResult __cdecl blContextFillMaskDRgba32(BLContextCore* self, const BLPoint* origin, const BLImageCore* mask, const BLRectI* maskArea, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextFillMaskDRgba64(BLContextCore* self, const BLPoint* origin, const BLImageCore* mask, const BLRectI* maskArea, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextFillMaskDExt(BLContextCore* self, const BLPoint* origin, const BLImageCore* mask, const BLRectI* maskArea, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeRectI(BLContextCore* self, const BLRectI* rect) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeRectIRgba32(BLContextCore* self, const BLRectI* rect, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeRectIRgba64(BLContextCore* self, const BLRectI* rect, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeRectIExt(BLContextCore* self, const BLRectI* rect, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeRectD(BLContextCore* self, const BLRect* rect) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeRectDRgba32(BLContextCore* self, const BLRect* rect, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeRectDRgba64(BLContextCore* self, const BLRect* rect, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeRectDExt(BLContextCore* self, const BLRect* rect, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokePathD(BLContextCore* self, const BLPoint* origin, const BLPathCore* path) ;
__declspec(dllimport) BLResult __cdecl blContextStrokePathDRgba32(BLContextCore* self, const BLPoint* origin, const BLPathCore* path, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokePathDRgba64(BLContextCore* self, const BLPoint* origin, const BLPathCore* path, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokePathDExt(BLContextCore* self, const BLPoint* origin, const BLPathCore* path, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGeometry(BLContextCore* self, BLGeometryType type, const void* data) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGeometryRgba32(BLContextCore* self, BLGeometryType type, const void* data, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGeometryRgba64(BLContextCore* self, BLGeometryType type, const void* data, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGeometryExt(BLContextCore* self, BLGeometryType type, const void* data, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf8TextI(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const char* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf8TextIRgba32(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const char* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf8TextIRgba64(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const char* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf8TextIExt(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const char* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf8TextD(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const char* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf8TextDRgba32(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const char* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf8TextDRgba64(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const char* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf8TextDExt(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const char* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf16TextI(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint16_t* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf16TextIRgba32(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint16_t* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf16TextIRgba64(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint16_t* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf16TextIExt(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint16_t* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf16TextD(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint16_t* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf16TextDRgba32(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint16_t* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf16TextDRgba64(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint16_t* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf16TextDExt(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint16_t* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf32TextI(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint32_t* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf32TextIRgba32(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint32_t* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf32TextIRgba64(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint32_t* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf32TextIExt(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const uint32_t* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf32TextD(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint32_t* text, size_t size) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf32TextDRgba32(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint32_t* text, size_t size, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf32TextDRgba64(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint32_t* text, size_t size, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeUtf32TextDExt(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const uint32_t* text, size_t size, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGlyphRunI(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const BLGlyphRun* glyphRun) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGlyphRunIRgba32(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGlyphRunIRgba64(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGlyphRunIExt(BLContextCore* self, const BLPointI* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGlyphRunD(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const BLGlyphRun* glyphRun) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGlyphRunDRgba32(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, uint32_t rgba32) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGlyphRunDRgba64(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, uint64_t rgba64) ;
__declspec(dllimport) BLResult __cdecl blContextStrokeGlyphRunDExt(BLContextCore* self, const BLPoint* origin, const BLFontCore* font, const BLGlyphRun* glyphRun, const BLUnknown* style) ;
__declspec(dllimport) BLResult __cdecl blContextBlitImageI(BLContextCore* self, const BLPointI* origin, const BLImageCore* img, const BLRectI* imgArea) ;
__declspec(dllimport) BLResult __cdecl blContextBlitImageD(BLContextCore* self, const BLPoint* origin, const BLImageCore* img, const BLRectI* imgArea) ;
__declspec(dllimport) BLResult __cdecl blContextBlitScaledImageI(BLContextCore* self, const BLRectI* rect, const BLImageCore* img, const BLRectI* imgArea) ;
__declspec(dllimport) BLResult __cdecl blContextBlitScaledImageD(BLContextCore* self, const BLRect* rect, const BLImageCore* img, const BLRectI* imgArea) ;
struct BLFontManagerCore  {
  BLObjectDetail _d;
};
struct BLFontManagerVirt  {
  BLObjectVirtBase base;
};
struct BLFontManagerImpl  {
  const BLFontManagerVirt* virt;
};
__declspec(dllimport) BLResult __cdecl blFontManagerInit(BLFontManagerCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontManagerInitMove(BLFontManagerCore* self, BLFontManagerCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontManagerInitWeak(BLFontManagerCore* self, const BLFontManagerCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontManagerInitNew(BLFontManagerCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontManagerDestroy(BLFontManagerCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontManagerReset(BLFontManagerCore* self) ;
__declspec(dllimport) BLResult __cdecl blFontManagerAssignMove(BLFontManagerCore* self, BLFontManagerCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontManagerAssignWeak(BLFontManagerCore* self, const BLFontManagerCore* other) ;
__declspec(dllimport) BLResult __cdecl blFontManagerCreate(BLFontManagerCore* self) ;
__declspec(dllimport) size_t __cdecl blFontManagerGetFaceCount(const BLFontManagerCore* self) ;
__declspec(dllimport) size_t __cdecl blFontManagerGetFamilyCount(const BLFontManagerCore* self) ;
__declspec(dllimport) _Bool __cdecl blFontManagerHasFace(const BLFontManagerCore* self, const BLFontFaceCore* face) ;
__declspec(dllimport) BLResult __cdecl blFontManagerAddFace(BLFontManagerCore* self, const BLFontFaceCore* face) ;
__declspec(dllimport) BLResult __cdecl blFontManagerQueryFace(const BLFontManagerCore* self, const char* name, size_t nameSize, const BLFontQueryProperties* properties, BLFontFaceCore* out) ;
__declspec(dllimport) BLResult __cdecl blFontManagerQueryFacesByFamilyName(const BLFontManagerCore* self, const char* name, size_t nameSize, BLArrayCore* out) ;
__declspec(dllimport) _Bool __cdecl blFontManagerEquals(const BLFontManagerCore* a, const BLFontManagerCore* b) ;
struct BLFontQueryProperties {
  uint32_t style;
  uint32_t weight;
  uint32_t stretch;
};
struct BLImageDecoderCore  {
  BLObjectDetail _d;
};
struct BLImageDecoderVirt  {
  BLObjectVirtBase base;
  BLResult (__cdecl* restart)(BLImageDecoderImpl* impl) ;
  BLResult (__cdecl* readInfo)(BLImageDecoderImpl* impl, BLImageInfo* infoOut, const uint8_t* data, size_t size) ;
  BLResult (__cdecl* readFrame)(BLImageDecoderImpl* impl, BLImageCore* imageOut, const uint8_t* data, size_t size) ;
};
struct BLImageDecoderImpl  {
  const BLImageDecoderVirt* virt;
  BLImageCodecCore codec;
  BLResult lastResult;
  void* handle;
  uint64_t frameIndex;
  size_t bufferIndex;
};
__declspec(dllimport) BLResult __cdecl blImageDecoderInit(BLImageDecoderCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderInitMove(BLImageDecoderCore* self, BLImageDecoderCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderInitWeak(BLImageDecoderCore* self, const BLImageDecoderCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderDestroy(BLImageDecoderCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderReset(BLImageDecoderCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderAssignMove(BLImageDecoderCore* self, BLImageDecoderCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderAssignWeak(BLImageDecoderCore* self, const BLImageDecoderCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderRestart(BLImageDecoderCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderReadInfo(BLImageDecoderCore* self, BLImageInfo* infoOut, const uint8_t* data, size_t size) ;
__declspec(dllimport) BLResult __cdecl blImageDecoderReadFrame(BLImageDecoderCore* self, BLImageCore* imageOut, const uint8_t* data, size_t size) ;
struct BLImageEncoderCore  {
  BLObjectDetail _d;
};
struct BLImageEncoderVirt  {
  BLObjectVirtBase base;
  BLResult (__cdecl* restart)(BLImageEncoderImpl* impl) ;
  BLResult (__cdecl* writeFrame)(BLImageEncoderImpl* impl, BLArrayCore* dst, const BLImageCore* image) ;
};
struct BLImageEncoderImpl  {
  const BLImageEncoderVirt* virt;
  BLImageCodecCore codec;
  BLResult lastResult;
  void* handle;
  uint64_t frameIndex;
  size_t bufferIndex;
};
__declspec(dllimport) BLResult __cdecl blImageEncoderInit(BLImageEncoderCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageEncoderInitMove(BLImageEncoderCore* self, BLImageEncoderCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageEncoderInitWeak(BLImageEncoderCore* self, const BLImageEncoderCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageEncoderDestroy(BLImageEncoderCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageEncoderReset(BLImageEncoderCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageEncoderAssignMove(BLImageEncoderCore* self, BLImageEncoderCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageEncoderAssignWeak(BLImageEncoderCore* self, const BLImageEncoderCore* other) ;
__declspec(dllimport) BLResult __cdecl blImageEncoderRestart(BLImageEncoderCore* self) ;
__declspec(dllimport) BLResult __cdecl blImageEncoderWriteFrame(BLImageEncoderCore* self, BLArrayCore* dst, const BLImageCore* image) ;
typedef BLResult (__cdecl* BLPixelConverterFunc)(
  const BLPixelConverterCore* self,
  uint8_t* dstData, intptr_t dstStride,
  const uint8_t* srcData, intptr_t srcStride,
  uint32_t w, uint32_t h, const BLPixelConverterOptions* options) ;
typedef enum BLPixelConverterCreateFlags BLPixelConverterCreateFlags; enum BLPixelConverterCreateFlags {
  BL_PIXEL_CONVERTER_CREATE_NO_FLAGS = 0u,
  BL_PIXEL_CONVERTER_CREATE_FLAG_DONT_COPY_PALETTE = 0x00000001u,
  BL_PIXEL_CONVERTER_CREATE_FLAG_ALTERABLE_PALETTE = 0x00000002u,
  BL_PIXEL_CONVERTER_CREATE_FLAG_NO_MULTI_STEP = 0x00000004u
  ,BL_PIXEL_CONVERTER_CREATE_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
struct BLPixelConverterOptions {
  BLPointI origin;
  size_t gap;
};
struct BLPixelConverterCore {
  union {
    struct {
      BLPixelConverterFunc convertFunc;
      uint8_t internalFlags;
    };
    uint8_t data[80];
  };
};
__declspec(dllimport) BLResult __cdecl blPixelConverterInit(BLPixelConverterCore* self) ;
__declspec(dllimport) BLResult __cdecl blPixelConverterInitWeak(BLPixelConverterCore* self, const BLPixelConverterCore* other) ;
__declspec(dllimport) BLResult __cdecl blPixelConverterDestroy(BLPixelConverterCore* self) ;
__declspec(dllimport) BLResult __cdecl blPixelConverterReset(BLPixelConverterCore* self) ;
__declspec(dllimport) BLResult __cdecl blPixelConverterAssign(BLPixelConverterCore* self, const BLPixelConverterCore* other) ;
__declspec(dllimport) BLResult __cdecl blPixelConverterCreate(BLPixelConverterCore* self, const BLFormatInfo* dstInfo, const BLFormatInfo* srcInfo, BLPixelConverterCreateFlags createFlags) ;
__declspec(dllimport) BLResult __cdecl blPixelConverterConvert(const BLPixelConverterCore* self,
  void* dstData, intptr_t dstStride,
  const void* srcData, intptr_t srcStride,
  uint32_t w, uint32_t h, const BLPixelConverterOptions* options) ;
__declspec(dllimport) BLResult __cdecl blRandomReset(BLRandom* self, uint64_t seed) ;
__declspec(dllimport) uint32_t __cdecl blRandomNextUInt32(BLRandom* self) ;
__declspec(dllimport) uint64_t __cdecl blRandomNextUInt64(BLRandom* self) ;
__declspec(dllimport) double __cdecl blRandomNextDouble(BLRandom* self) ;
struct BLRandom {
  uint64_t data[2];
};
typedef enum BLRuntimeLimits BLRuntimeLimits; enum BLRuntimeLimits {
  BL_RUNTIME_MAX_IMAGE_SIZE = 65535,
  BL_RUNTIME_MAX_THREAD_COUNT = 32
};
typedef enum BLRuntimeInfoType BLRuntimeInfoType; enum BLRuntimeInfoType {
  BL_RUNTIME_INFO_TYPE_BUILD = 0,
  BL_RUNTIME_INFO_TYPE_SYSTEM = 1,
  BL_RUNTIME_INFO_TYPE_RESOURCE = 2,
  BL_RUNTIME_INFO_TYPE_MAX_VALUE = 2
  ,BL_RUNTIME_INFO_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLRuntimeBuildType BLRuntimeBuildType; enum BLRuntimeBuildType {
  BL_RUNTIME_BUILD_TYPE_DEBUG = 0,
  BL_RUNTIME_BUILD_TYPE_RELEASE = 1
  ,BL_RUNTIME_BUILD_TYPE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLRuntimeCpuArch BLRuntimeCpuArch; enum BLRuntimeCpuArch {
  BL_RUNTIME_CPU_ARCH_UNKNOWN = 0,
  BL_RUNTIME_CPU_ARCH_X86 = 1,
  BL_RUNTIME_CPU_ARCH_ARM = 2,
  BL_RUNTIME_CPU_ARCH_MIPS = 3
  ,BL_RUNTIME_CPU_ARCH_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLRuntimeCpuFeatures BLRuntimeCpuFeatures; enum BLRuntimeCpuFeatures {
  BL_RUNTIME_CPU_FEATURE_X86_SSE2 = 0x00000001u,
  BL_RUNTIME_CPU_FEATURE_X86_SSE3 = 0x00000002u,
  BL_RUNTIME_CPU_FEATURE_X86_SSSE3 = 0x00000004u,
  BL_RUNTIME_CPU_FEATURE_X86_SSE4_1 = 0x00000008u,
  BL_RUNTIME_CPU_FEATURE_X86_SSE4_2 = 0x00000010u,
  BL_RUNTIME_CPU_FEATURE_X86_AVX = 0x00000020u,
  BL_RUNTIME_CPU_FEATURE_X86_AVX2 = 0x00000040u,
  BL_RUNTIME_CPU_FEATURE_X86_AVX512 = 0x00000080u
  ,BL_RUNTIME_CPU_FEATURE_FORCE_UINT = 0xFFFFFFFFu
};
typedef enum BLRuntimeCleanupFlags BLRuntimeCleanupFlags; enum BLRuntimeCleanupFlags {
  BL_RUNTIME_CLEANUP_NO_FLAGS = 0u,
  BL_RUNTIME_CLEANUP_OBJECT_POOL = 0x00000001u,
  BL_RUNTIME_CLEANUP_ZEROED_POOL = 0x00000002u,
  BL_RUNTIME_CLEANUP_THREAD_POOL = 0x00000010u,
  BL_RUNTIME_CLEANUP_EVERYTHING = 0xFFFFFFFFu
  ,BL_RUNTIME_CLEANUP_FLAG_FORCE_UINT = 0xFFFFFFFFu
};
struct BLRuntimeBuildInfo {
  uint32_t majorVersion;
  uint32_t minorVersion;
  uint32_t patchVersion;
  uint32_t buildType;
  uint32_t baselineCpuFeatures;
  uint32_t supportedCpuFeatures;
  uint32_t maxImageSize;
  uint32_t maxThreadCount;
  uint32_t reserved[2];
  char compilerInfo[32];
};
struct BLRuntimeSystemInfo {
  uint32_t cpuArch;
  uint32_t cpuFeatures;
  uint32_t coreCount;
  uint32_t threadCount;
  uint32_t threadStackSize;
  uint32_t removed;
  uint32_t allocationGranularity;
  uint32_t reserved[5];
  char cpuVendor[16];
  char cpuBrand[64];
};
struct BLRuntimeResourceInfo {
  size_t vmUsed;
  size_t vmReserved;
  size_t vmOverhead;
  size_t vmBlockCount;
  size_t zmUsed;
  size_t zmReserved;
  size_t zmOverhead;
  size_t zmBlockCount;
  size_t dynamicPipelineCount;
  size_t reserved[7];
};
__declspec(dllimport) BLResult __cdecl blRuntimeInit() ;
__declspec(dllimport) BLResult __cdecl blRuntimeShutdown() ;
__declspec(dllimport) BLResult __cdecl blRuntimeCleanup(BLRuntimeCleanupFlags cleanupFlags) ;
__declspec(dllimport) BLResult __cdecl blRuntimeQueryInfo(BLRuntimeInfoType infoType, void* infoOut) ;
__declspec(dllimport) BLResult __cdecl blRuntimeMessageOut(const char* msg) ;
__declspec(dllimport) BLResult __cdecl blRuntimeMessageFmt(const char* fmt, ...) ;
__declspec(dllimport) BLResult __cdecl blRuntimeMessageVFmt(const char* fmt, va_list ap) ;
__declspec(dllimport) BLResult __cdecl blResultFromWinError(uint32_t e) ;
struct BLRuntimeScopeCore {
  uint32_t data[2];
};
__declspec(dllimport) BLResult __cdecl blRuntimeScopeBegin(BLRuntimeScopeCore* self) ;
__declspec(dllimport) BLResult __cdecl blRuntimeScopeEnd(BLRuntimeScopeCore* self) ;
__declspec(dllimport) _Bool __cdecl blRuntimeScopeIsActive(const BLRuntimeScopeCore* self) ;
]]
return ffi.load("script\\blend2d\\blend2d")
