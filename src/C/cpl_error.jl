# Julia wrapper for header: /usr/local/include/cpl_error.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0




"""
    CPLEmergencyError(const char * pszMessage) -> void

Fatal error when things are bad.

### Parameters
* **pszMessage**: the error message to report.
"""
function CPLEmergencyError(arg1)
    ccall((:CPLEmergencyError, libgdal), Cvoid, (Cstring,), arg1)
end


"""
    CPLErrorReset() -> void

Erase any traces of previous errors.
"""
function CPLErrorReset()
    ccall((:CPLErrorReset, libgdal), Cvoid, ())
end


"""
    CPLGetLastErrorNo() -> CPLErrorNum

Fetch the last error number.

### Returns
the error number of the last error to occur, or CPLE_None (0) if there are no posted errors.
"""
function CPLGetLastErrorNo()
    ccall((:CPLGetLastErrorNo, libgdal), CPLErrorNum, ())
end


"""
    CPLGetLastErrorType() -> CPLErr

Fetch the last error type.

### Returns
the error type of the last error to occur, or CE_None (0) if there are no posted errors.
"""
function CPLGetLastErrorType()
    ccall((:CPLGetLastErrorType, libgdal), CPLErr, ())
end


"""
    CPLGetLastErrorMsg() -> const char *

Get the last error message.

### Returns
the last error message, or NULL if there is no posted error message.
"""
function CPLGetLastErrorMsg()
    ccall((:CPLGetLastErrorMsg, libgdal), Cstring, ())
end


"""
    CPLGetErrorHandlerUserData(void) -> void *

Fetch the user data for the error context.

### Returns
the user data pointer for the error context
"""
function CPLGetErrorHandlerUserData()
    ccall((:CPLGetErrorHandlerUserData, libgdal), Ptr{Cvoid}, ())
end


"""
    CPLErrorSetState(CPLErr eErrClass,
                     CPLErrorNum err_no,
                     const char * pszMsg) -> void

Restore an error state, without emitting an error.
"""
function CPLErrorSetState(eErrClass::CPLErr, err_no::CPLErrorNum, pszMsg)
    ccall((:CPLErrorSetState, libgdal), Cvoid, (CPLErr, CPLErrorNum, Cstring), eErrClass, err_no, pszMsg)
end


"""
    CPLCleanupErrorMutex() -> void
"""
function CPLCleanupErrorMutex()
    ccall((:CPLCleanupErrorMutex, libgdal), Cvoid, ())
end


"""
    CPLLoggingErrorHandler(CPLErr eErrClass,
                           CPLErrorNum nError,
                           const char * pszErrorMsg) -> void

Error handler that logs into the file defined by the CPL_LOG configuration option, or stderr otherwise.
"""
function CPLLoggingErrorHandler(arg1::CPLErr, arg2::CPLErrorNum, arg3)
    ccall((:CPLLoggingErrorHandler, libgdal), Cvoid, (CPLErr, CPLErrorNum, Cstring), arg1, arg2, arg3)
end


"""
    CPLDefaultErrorHandler(CPLErr eErrClass,
                           CPLErrorNum nError,
                           const char * pszErrorMsg) -> void

Default error handler.
"""
function CPLDefaultErrorHandler(arg1::CPLErr, arg2::CPLErrorNum, arg3)
    ccall((:CPLDefaultErrorHandler, libgdal), Cvoid, (CPLErr, CPLErrorNum, Cstring), arg1, arg2, arg3)
end


"""
    CPLQuietErrorHandler(CPLErr eErrClass,
                         CPLErrorNum nError,
                         const char * pszErrorMsg) -> void

Error handler that does not do anything, except for debug messages.
"""
function CPLQuietErrorHandler(arg1::CPLErr, arg2::CPLErrorNum, arg3)
    ccall((:CPLQuietErrorHandler, libgdal), Cvoid, (CPLErr, CPLErrorNum, Cstring), arg1, arg2, arg3)
end


"""
    CPLTurnFailureIntoWarning(int bOn) -> void

Whether failures should be turned into warnings.
"""
function CPLTurnFailureIntoWarning(bOn::Cint)
    ccall((:CPLTurnFailureIntoWarning, libgdal), Cvoid, (Cint,), bOn)
end


"""
    CPLSetErrorHandler(CPLErrorHandler pfnErrorHandlerNew) -> CPLErrorHandler

Install custom error handler.

### Parameters
* **pfnErrorHandlerNew**: new error handler function.

### Returns
returns the previously installed error handler.
"""
function CPLSetErrorHandler(arg1::CPLErrorHandler)
    ccall((:CPLSetErrorHandler, libgdal), CPLErrorHandler, (CPLErrorHandler,), arg1)
end


"""
    CPLSetErrorHandlerEx(CPLErrorHandler pfnErrorHandlerNew,
                         void * pUserData) -> CPLErrorHandler

Install custom error handle with user's data.

### Parameters
* **pfnErrorHandlerNew**: new error handler function.
* **pUserData**: User data to carry along with the error context.

### Returns
returns the previously installed error handler.
"""
function CPLSetErrorHandlerEx(arg1::CPLErrorHandler, arg2)
    ccall((:CPLSetErrorHandlerEx, libgdal), CPLErrorHandler, (CPLErrorHandler, Ptr{Cvoid}), arg1, arg2)
end


"""
    CPLPushErrorHandler(CPLErrorHandler pfnErrorHandlerNew) -> void

Push a new CPLError handler.

### Parameters
* **pfnErrorHandlerNew**: new error handler function.
"""
function CPLPushErrorHandler(arg1::CPLErrorHandler)
    ccall((:CPLPushErrorHandler, libgdal), Cvoid, (CPLErrorHandler,), arg1)
end


"""
    CPLPushErrorHandlerEx(CPLErrorHandler pfnErrorHandlerNew,
                          void * pUserData) -> void

Push a new CPLError handler with user data on the error context.

### Parameters
* **pfnErrorHandlerNew**: new error handler function.
* **pUserData**: User data to put on the error context.
"""
function CPLPushErrorHandlerEx(arg1::CPLErrorHandler, arg2)
    ccall((:CPLPushErrorHandlerEx, libgdal), Cvoid, (CPLErrorHandler, Ptr{Cvoid}), arg1, arg2)
end


"""
    CPLSetCurrentErrorHandlerCatchDebug(int bCatchDebug) -> void

Set if the current error handler should intercept debug messages, or if they should be processed by the previous handler.

### Parameters
* **bCatchDebug**: FALSE if the current error handler should not intercept debug messages
"""
function CPLSetCurrentErrorHandlerCatchDebug(bCatchDebug::Cint)
    ccall((:CPLSetCurrentErrorHandlerCatchDebug, libgdal), Cvoid, (Cint,), bCatchDebug)
end


"""
    CPLPopErrorHandler() -> void

Pop error handler off stack.
"""
function CPLPopErrorHandler()
    ccall((:CPLPopErrorHandler, libgdal), Cvoid, ())
end


"""
    _CPLAssert(const char * pszExpression,
               const char * pszFile,
               int iLine) -> void

Report failure of a logical assertion.
"""
function _CPLAssert(arg1, arg2, arg3::Cint)
    ccall((:_CPLAssert, libgdal), Cvoid, (Cstring, Cstring, Cint), arg1, arg2, arg3)
end
