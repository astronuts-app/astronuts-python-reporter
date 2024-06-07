from setuptools import setup, find_packages

setup(
    name="astronuts-python-reporter",
    version="0.1.0",
    packages=find_packages(),
    install_requires=[
        'pytest',
    ],
    entry_points={
        'console_scripts': [
            'run-reporter=code_analysis.sonar:main',
        ],
    },
# TODO FILL THIS @Suraj
    author="astronuts",
    author_email="your.email@example.com",
    description="A package to automate running pytest and transforming reports.",
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url="",
)
