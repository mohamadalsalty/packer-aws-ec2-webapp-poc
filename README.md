# packer-aws-ec2-webapp-poc

This project includes a web application that can be deployed using Packer.

## Files

- **app.sh**: A script used for provisioning the web application.
- **index.html**: The HTML file for the web application's landing page.
- **webapp.pkr.hcl**: The Packer configuration file used to build the web application image.

## Usage

1. **Provisioning**: The `app.sh` script handles the provisioning of the web application.
2. **Building with Packer**: Use the `webapp.pkr.hcl` file with Packer to build the application image.
3. **Web Application**: The `index.html` file is the main page of the web application.

## Deployment

To deploy the web application, follow these steps:

1. Run the `app.sh` script to set up the necessary environment.
2. Build the application image using Packer with the provided `webapp.pkr.hcl` file.
3. Deploy the `index.html` file to your web server.

## License

This project is licensed under the MIT License.