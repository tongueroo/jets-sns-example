## Jets SNS Events Example

This project shows a simple SNS Events example with [Jets](http://rubyonjets.com/).

## Usage

    git clone https://github.com/tongueroo/jets-sns-example demo
    cd demo
    bundle

## Deploy

Next, we'll deploy the app to AWS Lambda with [jets deploy](http://rubyonjets.com/reference/jets-deploy/).

    jets deploy

## Publish Test Message

Here's an example of publishing a test message with the [aws sns publish](https://docs.aws.amazon.com/cli/latest/reference/sns/publish.html) cli.

    aws sns publish --topic-arn arn:aws:sns:us-west-2:112233445566:my-topic --message '{"default": "test message"}'

Here's the blog article:

* Blog Post: []()

If you find Jets interesting, please it a GitHub star [tongueroo/jets](https://github.com/tongueroo/jets). It helps others find out about the project.  I'd appreciate it!