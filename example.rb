class ToolbarController
  def show
    # this is only for test purposes to see if Mend will trigger
    params[:id] ||= "10"
    Rails.logger.info(User.where("id = #{params[:id]}").limit(10).map(&:id))
    # end of test block
  end
end
