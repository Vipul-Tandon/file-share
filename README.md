# File Share API

This Rails API project provides secure file-sharing capabilities, implementing various security measures to ensure data integrity and user privacy.

## Features

### Secure File Upload

The API includes an endpoint `POST /upload` for securely uploading files. The implementation incorporates checks to prevent unauthorized access, ensuring that only authenticated users can upload files.

### Input Validation

All input data undergoes rigorous validation to prevent injection attacks, including but not limited to SQL injection. By validating input data, the API mitigates the risk of malicious exploitation of vulnerabilities.

### Encryption

Sensitive data storage and transmission, such as passwords or uploaded files, are encrypted to safeguard against unauthorized access. Encryption mechanisms are employed to protect the confidentiality and integrity of sensitive information.

### Unit Tests

Comprehensive unit tests have been written to validate the functionality and security measures implemented throughout the project. These tests cover the entire codebase, ensuring robustness and reliability.

## Setup

1. **Clone the Repository:**
    ```sh
    git clone https://github.com/mystificator/file-share.git
    cd file-share
2. **Install Dependencies:**
    ```sh
    bundle install
3. **Database Setup:**
    ```sh
    rails db:create
    rails db:migrate
4. **Start the Server:**
    ```sh
    rails server
    ```

## Testing

To run the unit tests, use the following command:
```sh
bundle exec rspec
```

## Contributing
Contributions are welcome! Please feel free to submit issues or pull requests to enhance the security and functionality of the API.
