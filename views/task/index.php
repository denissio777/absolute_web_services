<?php include ROOT . '/views/layouts/header.php'; ?>

<section>
    <div class="container">
        <div class="row">
            <?php if (User::isMother()): ?>
            <div class="col-sm-4 col-sm-offset-4 padding-right" style="margin: auto">
                <form method="post" action="/task/edit/" enctype="multipart/form-data">
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <input type="file" accept=".csv" class="custom-file-input" id="input-file" name="csv">
                        <label class="custom-file-label" for="input-file">Choose file</label>
                    </div>
                    <div class="input-group-append">
                        <button class="input-group-text" type="submit">Upload</button>
                    </div>
                </div>
                </form>
            </div>
            <?php endif; ?>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Content</th>
                    <th scope="col">Mark as done</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($userTasks as $task): ?>
                <tr>
                    <th scope="row"><?php echo $task['id'];?></th>
                    <td><?php echo $task['title'];?></td>
                    <td><?php echo $task['content'];?></td>
                    <td>
                        <form method="post" action="/task/done/">
                            <button type="submit" class="btn btn-success btn-md" name="done" value="<?php echo $task['id'];?>">Done</button>
                        </form>
                    </td>
                </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</section>