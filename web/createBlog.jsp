<%-- 
    Document   : createBlog
    Created on : Oct 7, 2024, 9:43:38 PM
    Author     : Norttie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Blog</title>
    <!-- Quill CSS -->
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    
    <!-- Quill JavaScript -->
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    
    <style>
        #editor-container {
            height: 300px;
        }
    </style>
</head>
<body>
    <h2>Create a New Blog</h2>
    
    <form action="uploadBlog" method="post" enctype="multipart/form-data">
        <label for="title">Blog Title:</label><br>
        <input type="text" id="title" name="title" required><br><br>

        <label for="thumbnail">Upload Thumbnail:</label><br>
        <input type="file" id="thumbnail" name="thumbnail" accept="image/*" required><br><br>
        
        <label for="editor-container">Content:</label><br>
        <div id="editor-container"></div><br>
        
        <!-- Hidden input to store blog content -->
        <input type="hidden" name="content" id="content">
        
        <button type="submit">Submit</button>
    </form>

    <script>
        // Initialize Quill editor
        var quill = new Quill('#editor-container', {
            theme: 'snow',
            placeholder: 'Write your blog content here...',
            modules: {
                toolbar: [
                    [{ 'header': [1, 2, false] }],
                    ['bold', 'italic', 'underline'],
                    [{ 'list': 'ordered'}, { 'list': 'bullet' }],
                    ['link'],
                    ['clean']
                ]
            }
        });
        
        // Capture form submit event and save editor content
        var form = document.querySelector('form');
        form.onsubmit = function() {
            // Store the editor's content (HTML) in hidden input
            var content = document.querySelector('input[name=content]');
            content.value = quill.root.innerHTML;
        };
    </script>
</body>
</html>





