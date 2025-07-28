---
title: "Changing Stream for a Perforce Workspace"
date:   2025-07-15 06:00:00 +0200
categories:
  - Programming
tags: 
  - "Game Development"
  - "Perforce"
  - "Version Control"
---

Perforce is a popular version control system used in game development, because it handles non-code, binary assets better than Git. 

## The problem

It has a drawback, however. Repositories can grow pretty huge over time. At my company, 250–300 GB repositories are not uncommon, and you have to sync them down to your workstation in order to carry out your development work. Syncing can take a whole day, depending on your internet connection. It also requires a lot of disk space.

And that's only one workspace. We have several streams (similar to Git branches), and if you want to work on more than one, you have to have them mapped to different workspaces on your disk. Even more syncing, even more disk space.

## The solution

There is a useful trick, however, that can help you save a lot of time and disk space. It is possible to retarget your workspace to another stream. Depending on the differences between the two streams, the synchronisation after the switch can be very fast, and you will have to keep only one workspace worth of data on your disk.

## Steps

1\. Go to `Edit > Preferences > Streams` tab and make sure that `"Work in stream" menu behaviour` is set to `Choose at the time of action`.

![Figure 1: Work in stream menu behaviour](/assets/images/programming/changing-stream-for-a-perforce-workspace/1.png)
{:.text-center}
*Figure 1: Work in stream menu behaviour setting*
{:.text-center}

2\. In the left panel, select the Workspace tree.

![Figure 2: Workspace tree](/assets/images/programming/changing-stream-for-a-perforce-workspace/2.png)
{:.text-center}
*Figure 2: Workspace tree*
{:.text-center}

In the top dropdown menu, select the workspace whose stream you want to change.

The line marked with `1` shows the name of your workspace: `synapse_DESKTOP-BF6888H_9492` and in parentheses the stream it is currently tracking: `Develop`.

The line marked with `2` shows the folder on your disk associated with the workspace.

3\. In the right panel, select the Streams tab:

![Figure 3: Streams view](/assets/images/programming/changing-stream-for-a-perforce-workspace/3.png)
{:.text-center}
*Figure 3: Streams view*
{:.text-center}

You will see a tree structure of the streams available in the right panel.

4\. Browse to the stream you want to switch to. Right click it and hover `Work in this Stream`.

![Figure 4: Switch stream](/assets/images/programming/changing-stream-for-a-perforce-workspace/4.png)
{:.text-center}
*Figure 4: Switch stream*
{:.text-center}

A submenu will open with two choices: `Use different workspace` and `Reuse current workspace`. We want to choose `Reuse current workspace` in this case. This is why we selected `Choose at the time of action` in the settings in step 1. If you cannot see `Reuse current workspace`, then go back to step 1 to enable it.

5\. Click `Yes` in the pop-up window asking if you want to get the latest revision:

![Figure 5: Get latest revision pop-up](/assets/images/programming/changing-stream-for-a-perforce-workspace/5.png)
{:.text-center}
*Figure 5: Get latest revision pop-up*
{:.text-center}

Depending on the differences between your previous workspace (`Develop`) and the new stream (`release`), this operation can be quite fast—certainly faster than syncing down the whole stream from scratch—and you will use half the disk space (only one workspace instead of two). There are some caveats, however:

1. If the target stream is very different, Perforce might warn about conflicting files or deletions.  
2. Your folder on your disk will still be called `d:\dev\workspaces\gummy\develop`, but it now tracks the `release` stream. In practice it should not cause any problems, but it’s worth remembering. (Maybe you can plan your naming better next time. 🙂)
