from setuptools import setup, find_packages

# Die Long Description aus der README.rst einlesen
with open('README.rst', 'r', encoding='utf-8') as f:
    long_description = f.read()

setup(
    name='', # Add your Package Name here
    version='', # Add your Version here
    packages=find_packages(where='src'),
    package_dir={'': 'src'},
    install_requires=[],  # Add the Depends here
    long_description=long_description,  # Long Description are in the README.rst
    long_description_content_type='text/x-rst',  
)
