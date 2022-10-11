from asyncio.windows_events import NULL
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager
from webdriver_manager.opera import OperaDriverManager


def get_driver_path_with_browser(browser_name):
    match browser_name.lower():
        case "chrome":
            return ChromeDriverManager().install()
        case 'firefox':
            return GeckoDriverManager().install()
        case 'edge':
            return EdgeChromiumDriverManager().install()
        case 'opera':
            return OperaDriverManager().install()
        case default:
            return NULL