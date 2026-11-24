---
url: https://help.hh-dm.com/extensibility/api/matlab/
---

MATLAB

There is no SDK for the HH Data Management API written natively in MATLAB as there are in C# and Python.

The easiest way to interact with the API in MATLAB is to invoke the Python wrapper from within MATLAB using the Python library integration MATLAB provides.

To get started, first install the Python wrapper globally using the instructions at the top of the Python wrapper page.

The Python wrapper can then be called directly from MATLAB by adding the py. prefix to the Python name. For example to get all the accounts a user has access to, run the following in MATLAB:

py.importlib.import_module("asyncio");
py.importlib.import_module("hhdm_apiclient_wrapper");

auth_settings = py.hhdm_apiclient_wrapper.AuthenticationSettings(api_key="YOUR_API_KEY", authentication_mode=py.hhdm_apiclient_wrapper.AuthenticationMode(1));
client = py.hhdm_apiclient_wrapper.ApiClient(authentication_manager=py.hhdm_apiclient_wrapper.AuthenticationManager(auth_settings));

result = py.asyncio.run(client.get_all_accounts());
disp(result.return_value)
