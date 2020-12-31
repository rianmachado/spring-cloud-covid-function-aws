package rian.example.springcloudfunction.handler;

import org.springframework.cloud.function.adapter.aws.SpringBootRequestHandler;

import rian.example.springcloudfunction.input.Request;
import rian.example.springcloudfunction.output.Response;

public class CovidFunctionHandler extends SpringBootRequestHandler<Request, Response> {
}
