
# AUTOPATCH SAFE DEFS
def sanitize_for_log(s):
    try:
        if s is None:
            return ''
        # remove literal escape sequences coming from serialized JSON/logs
        return str(s).replace('\\r','').replace('\\n','').replace('`n','').replace('\\\\`n','')
    except Exception:
        return str(s)
from datetime import datetime
import td_test_manager

# --- safe_git wrapper inserted automatically ---
import subprocess
def safe_git(cmd_args):
    try:
        out = subprocess.check_output(cmd_args, stderr=subprocess.STDOUT, shell=False)
        return out.decode("utf8", errors="ignore").strip()
    except Exception:
        return ""
# --- end safe_git wrapper ---

