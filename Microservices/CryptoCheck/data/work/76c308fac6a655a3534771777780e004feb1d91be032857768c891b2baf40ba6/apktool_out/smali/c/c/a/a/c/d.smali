.class public Lc/c/a/a/c/d;
.super Lc/c/a/a/c/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/c/d$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Lc/c/a/a/c/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/c/a/a/c/d;->c:Ljava/lang/Object;

    new-instance v0, Lc/c/a/a/c/d;

    invoke-direct {v0}, Lc/c/a/a/c/d;-><init>()V

    sput-object v0, Lc/c/a/a/c/d;->d:Lc/c/a/a/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lc/c/a/a/c/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lc/c/a/a/c/e;->a:I

    invoke-virtual {p0, p1, v0}, Lc/c/a/a/c/e;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Lc/c/a/a/c/e;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public d(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 5

    const-string v0, "d"

    .line 1
    invoke-super {p0, p1, p2, v0}, Lc/c/a/a/c/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    new-instance v1, Lc/c/a/a/c/l/v;

    invoke-direct {v1, v0, p1, p3}, Lc/c/a/a/c/l/v;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_2

    .line 3
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010309

    invoke-virtual {v3, v4, v2, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Theme.Dialog.Alert"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1, p2}, Lc/c/a/a/c/l/d;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eq p2, p3, :cond_5

    const/4 v4, 0x2

    if-eq p2, v4, :cond_4

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    const v4, 0x104000a

    goto :goto_1

    :cond_3
    sget v4, Lc/c/a/a/b/b;->common_google_play_services_enable_button:I

    goto :goto_1

    :cond_4
    sget v4, Lc/c/a/a/b/b;->common_google_play_services_update_button:I

    goto :goto_1

    :cond_5
    sget v4, Lc/c/a/a/b/b;->common_google_play_services_install_button:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_6
    invoke-static {p1, p2}, Lc/c/a/a/c/l/d;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_7
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    :goto_2
    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string v1, "GooglePlayServicesErrorDialog"

    .line 6
    instance-of v2, p1, Lb/l/a/e;

    const-string v3, "Cannot display null dialog"

    if-eqz v2, :cond_9

    check-cast p1, Lb/l/a/e;

    invoke-virtual {p1}, Lb/l/a/e;->m()Lb/l/a/j;

    move-result-object p1

    .line 7
    new-instance v2, Lc/c/a/a/c/j;

    invoke-direct {v2}, Lc/c/a/a/c/j;-><init>()V

    invoke-static {p2, v3}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, v2, Lc/c/a/a/c/j;->h0:Landroid/app/Dialog;

    iput-object p4, v2, Lc/c/a/a/c/j;->i0:Landroid/content/DialogInterface$OnCancelListener;

    .line 8
    invoke-virtual {v2, p1, v1}, Lc/c/a/a/c/j;->b0(Lb/l/a/j;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 9
    new-instance v2, Lc/c/a/a/c/b;

    invoke-direct {v2}, Lc/c/a/a/c/b;-><init>()V

    invoke-static {p2, v3}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, v2, Lc/c/a/a/c/b;->b:Landroid/app/Dialog;

    iput-object p4, v2, Lc/c/a/a/c/b;->c:Landroid/content/DialogInterface$OnCancelListener;

    .line 10
    invoke-virtual {v2, p1, v1}, Lc/c/a/a/c/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_3
    return p3
.end method

.method public final e(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lc/c/a/a/c/d$a;

    invoke-direct {p2, p0, p1}, Lc/c/a/a/c/d$a;-><init>(Lc/c/a/a/c/d;Landroid/content/Context;)V

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v1, 0x6

    if-nez p3, :cond_2

    if-ne p2, v1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    const-string v2, "common_google_play_services_resolution_required_title"

    .line 3
    invoke-static {p1, v2}, Lc/c/a/a/c/l/d;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lc/c/a/a/c/l/d;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lc/c/a/a/b/b;->common_google_play_services_notification_ticker:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eq p2, v1, :cond_6

    const/16 v1, 0x13

    if-ne p2, v1, :cond_5

    goto :goto_1

    .line 4
    :cond_5
    invoke-static {p1, p2}, Lc/c/a/a/c/l/d;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {p1}, Lc/c/a/a/c/l/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "common_google_play_services_resolution_required_text"

    invoke-static {p1, v3, v1}, Lc/c/a/a/c/l/d;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    new-instance v5, Lb/i/d/g;

    invoke-direct {v5, p1}, Lb/i/d/g;-><init>(Landroid/content/Context;)V

    .line 6
    iput-boolean v0, v5, Lb/i/d/g;->j:Z

    .line 7
    iget-object v6, v5, Lb/i/d/g;->s:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 8
    invoke-static {v2}, Lb/i/d/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v5, Lb/i/d/g;->d:Ljava/lang/CharSequence;

    .line 9
    new-instance v2, Lb/i/d/f;

    invoke-direct {v2}, Lb/i/d/f;-><init>()V

    .line 10
    invoke-static {v1}, Lb/i/d/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Lb/i/d/f;->c:Ljava/lang/CharSequence;

    .line 11
    iget-object v6, v5, Lb/i/d/g;->i:Lb/i/d/h;

    if-eq v6, v2, :cond_7

    iput-object v2, v5, Lb/i/d/g;->i:Lb/i/d/h;

    .line 12
    iget-object v6, v2, Lb/i/d/h;->a:Lb/i/d/g;

    if-eq v6, v5, :cond_7

    iput-object v5, v2, Lb/i/d/h;->a:Lb/i/d/g;

    invoke-virtual {v5, v2}, Lb/i/d/g;->b(Lb/i/d/h;)Lb/i/d/g;

    .line 13
    :cond_7
    invoke-static {p1}, Lc/c/a/a/c/l/q;->I(Landroid/content/Context;)Z

    move-result v2

    const/4 v6, 0x2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 14
    iget-object v2, v5, Lb/i/d/g;->s:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    .line 15
    iput v6, v5, Lb/i/d/g;->g:I

    .line 16
    invoke-static {p1}, Lc/c/a/a/c/l/q;->J(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lc/c/a/a/b/a;->common_full_open_on_phone:I

    sget v2, Lc/c/a/a/b/b;->common_open_on_phone:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    iget-object v3, v5, Lb/i/d/g;->b:Ljava/util/ArrayList;

    new-instance v7, Lb/i/d/e;

    invoke-direct {v7, v1, v2, p3}, Lb/i/d/e;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_8
    iput-object p3, v5, Lb/i/d/g;->f:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_9
    const v2, 0x108008a

    .line 19
    iget-object v7, v5, Lb/i/d/g;->s:Landroid/app/Notification;

    iput v2, v7, Landroid/app/Notification;->icon:I

    .line 20
    sget v2, Lc/c/a/a/b/b;->common_google_play_services_notification_ticker:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    iget-object v3, v5, Lb/i/d/g;->s:Landroid/app/Notification;

    invoke-static {v2}, Lb/i/d/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 23
    iget-object v7, v5, Lb/i/d/g;->s:Landroid/app/Notification;

    iput-wide v2, v7, Landroid/app/Notification;->when:J

    .line 24
    iput-object p3, v5, Lb/i/d/g;->f:Landroid/app/PendingIntent;

    .line 25
    invoke-static {v1}, Lb/i/d/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, v5, Lb/i/d/g;->e:Ljava/lang/CharSequence;

    .line 26
    :goto_3
    invoke-static {}, Lc/c/a/a/c/l/q;->H()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-static {}, Lc/c/a/a/c/l/q;->H()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 27
    sget-object p3, Lc/c/a/a/c/d;->c:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "com.google.android.gms.availability"

    .line 28
    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {p1}, Lc/c/a/a/c/l/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_a

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v1, p3, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 29
    :cond_b
    iput-object p3, v5, Lb/i/d/g;->o:Ljava/lang/String;

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 31
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 32
    :cond_d
    :goto_5
    new-instance p1, Lb/i/d/i;

    invoke-direct {p1, v5}, Lb/i/d/i;-><init>(Lb/i/d/g;)V

    .line 33
    iget-object p3, p1, Lb/i/d/i;->b:Lb/i/d/g;

    iget-object p3, p3, Lb/i/d/g;->i:Lb/i/d/h;

    const/4 v1, 0x0

    if-eqz p3, :cond_e

    move-object v2, p3

    check-cast v2, Lb/i/d/f;

    .line 34
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 35
    iget-object v5, p1, Lb/i/d/i;->a:Landroid/app/Notification$Builder;

    .line 36
    invoke-direct {v3, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    iget-object v5, v2, Lb/i/d/f;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    iget-boolean v2, v2, Lb/i/d/h;->b:Z

    if-eqz v2, :cond_e

    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 37
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_f

    iget-object v2, p1, Lb/i/d/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_7

    :cond_f
    const/16 v3, 0x18

    if-lt v2, v3, :cond_11

    iget-object v2, p1, Lb/i/d/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget v3, p1, Lb/i/d/i;->g:I

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_10

    iget v3, p1, Lb/i/d/i;->g:I

    if-ne v3, v6, :cond_10

    invoke-virtual {p1, v2}, Lb/i/d/i;->a(Landroid/app/Notification;)V

    :cond_10
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_16

    iget v3, p1, Lb/i/d/i;->g:I

    if-ne v3, v0, :cond_16

    goto :goto_6

    :cond_11
    iget-object v2, p1, Lb/i/d/i;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lb/i/d/i;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v2, p1, Lb/i/d/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p1, Lb/i/d/i;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_12

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_12
    iget-object v3, p1, Lb/i/d/i;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_13

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_13
    iget-object v3, p1, Lb/i/d/i;->h:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_14

    iput-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_14
    iget v3, p1, Lb/i/d/i;->g:I

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_15

    iget v3, p1, Lb/i/d/i;->g:I

    if-ne v3, v6, :cond_15

    invoke-virtual {p1, v2}, Lb/i/d/i;->a(Landroid/app/Notification;)V

    :cond_15
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_16

    iget v3, p1, Lb/i/d/i;->g:I

    if-ne v3, v0, :cond_16

    :goto_6
    invoke-virtual {p1, v2}, Lb/i/d/i;->a(Landroid/app/Notification;)V

    .line 38
    :cond_16
    :goto_7
    iget-object v3, p1, Lb/i/d/i;->b:Lb/i/d/g;

    iget-object v3, v3, Lb/i/d/g;->n:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_17

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_17
    if-eqz p3, :cond_19

    iget-object p1, p1, Lb/i/d/i;->b:Lb/i/d/g;

    iget-object p1, p1, Lb/i/d/g;->i:Lb/i/d/h;

    if-eqz p1, :cond_18

    goto :goto_8

    .line 39
    :cond_18
    throw v1

    :cond_19
    :goto_8
    if-eqz p3, :cond_1a

    .line 40
    iget-object p1, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_1a
    if-eq p2, v0, :cond_1b

    if-eq p2, v6, :cond_1b

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1b

    const p1, 0x9b6d

    goto :goto_9

    :cond_1b
    const/16 p1, 0x28c4

    .line 41
    sget-object p2, Lc/c/a/a/c/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_9
    invoke-virtual {v4, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
