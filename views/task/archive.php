<?php include ROOT . '/views/layouts/header.php'; ?>

<section>
    <div class="container">
        <div class="row">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Content</th>
                    <th scope="col">Completed at</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($tasks as $task): ?>
                <tr>
                    <th scope="row"><?php echo $task['id'];?></th>
                    <td><?php echo $task['title'];?></td>
                    <td><?php echo $task['content'];?></td>
                    <td><?php echo $task['updated_at'];?></td>
                </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</section>