class TasksController < ApplicationController
  def create
    Task.delay.call_heavy_api({ foo: 'bar' })

    render json: { status: 'SUCCESS', data: 'done' }
  end
end
