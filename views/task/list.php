<?php include ROOT . '/views/layouts/header.php'; ?>
<?php $users ?>
<section>
    <div class="container">
        <div class="row">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Content</th>
                    <th scope="col">Assign to</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($tasks as $task): ?>
                <tr>
                    <th scope="row"><?php echo $task['id'];?></th>
                    <td><?php echo $task['title'];?></td>
                    <td><?php echo $task['content'];?></td>
                    <td>
                        <form method="post" action="/task/assign/">
                        <div class="form-group">
                            <select class="form-control" id="assign-to" name="assign-to">
                                <?php foreach ($users as $user): ?>
                                <option value="<?php echo $user['id'] . ','; echo $task['id']; ?>"><?php echo $user['name'];?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                            <button type="submit" class="btn btn-success btn-md">Assign</button>
                        </form>
                    </td>
                </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</section>