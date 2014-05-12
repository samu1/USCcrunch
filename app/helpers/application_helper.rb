module ApplicationHelper

  def validation_error(message)
    if message.class.to_s == 'Array'
      message = message.join(",")
    end
    return !message.to_s.blank? ? ("<div class='form_error' style='color:red;'>"+message.to_s+"</div>").html_safe : " "
  end

  def profile_picture
    if @user.role == 'student'
      @user.avatar.present? ? image_tag(@user.avatar.url(:original), :class => "profile_pic img-rounded for_cover_photo one_eighty") : image_tag("/assets/profile_pic_student.png", :class => "profile_pic img-rounded for_cover_photo one_eighty")
    else
      @user.avatar.present? ? image_tag(@user.avatar.url(:original), :class => "profile_pic img-rounded for_cover_photo one_eighty") : image_tag("/assets/profile_pic_instructor.png", :class => "profile_pic img-rounded for_cover_photo one_eighty")
    end
  end

  def class_profile_picture
    if current_user.role == 'student'
      @user.class_photo.present? ? image_tag(@user.class_photo.url(:original), :class => "profile_pic img-rounded for_cover_photo one_eighty") : image_tag("/assets/profile_pic_student.png", :class => "profile_pic img-rounded for_cover_photo one_eighty")
    else
      @user.class_photo.present? ? image_tag(@user.class_photo.url(:original), :class => "profile_pic img-rounded for_cover_photo one_eighty") : image_tag("/assets/profile_pic_instructor.png", :class => "profile_pic img-rounded for_cover_photo one_eighty")
    end
  end


  def post_picture(post)
    if post.user.role == 'student'
      post.user.avatar.present? ? image_tag(post.user.avatar.url(:original), :class => "profile_pic img-rounded fifty_by_fifty") : image_tag("/assets/profile_pic_student.png", :class => "profile_pic img-rounded fifty_by_fifty")
    else
      post.user.avatar.present? ? image_tag(post.user.avatar.url(:original), :class => "profile_pic img-rounded fifty_by_fifty") : image_tag("/assets/profile_pic_instructor.png", :class => "profile_pic img-rounded fifty_by_fifty")
    end
  end

  def conversation_picture(post)
    if post.user.role == 'student'
      post.user.avatar.present? ? image_tag(post.user.avatar.url(:original), :class => "conversation_post_pic_small thirty_by_thirty") : image_tag("/assets/profile_pic_student.png", :class => "conversation_post_pic_small thirty_by_thirty")
    else
      post.user.avatar.present? ? image_tag(post.user.avatar.url(:original), :class => "conversation_post_pic_small thirty_by_thirty") : image_tag("/assets/profile_pic_instructor.png", :class => "conversation_post_pic_small thirty_by_thirty")
    end
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end
end
