.class public final Lb/d/c$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lb/d/c;


# direct methods
.method public constructor <init>(Lb/d/c;)V
    .locals 0

    iput-object p1, p0, Lb/d/c$c;->a:Lb/d/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lb/d/c$c;->a:Lb/d/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->k()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lb/d/c$c;->a:Lb/d/c;

    if-eqz p1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v1}, La/a/a/a/a;->y0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    iput-boolean v3, v0, Lb/d/c;->p0:Z

    goto/16 :goto_3

    .line 2
    :pswitch_1
    iget-object p1, p0, Lb/d/c$c;->a:Lb/d/c;

    invoke-virtual {p1}, Lb/d/c;->c0()V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p0, Lb/d/c$c;->a:Lb/d/c;

    .line 3
    invoke-virtual {p1, v3}, Lb/d/c;->f0(I)V

    iget-object v0, p1, Lb/d/c;->n0:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget v1, p1, Lb/d/c;->k0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lb/d/c;->n0:Landroid/widget/TextView;

    iget-object p1, p1, Lb/d/c;->o0:Landroid/content/Context;

    sget v1, Lb/d/n;->fingerprint_dialog_touch_sensor:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 4
    :pswitch_3
    iget-object v0, p0, Lb/d/c$c;->a:Lb/d/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    .line 5
    iget-boolean v1, v0, Lb/d/c;->p0:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lb/d/c;->c0()V

    goto :goto_2

    .line 6
    :cond_1
    iget-object v1, v0, Lb/d/c;->n0:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget v2, v0, Lb/d/c;->j0:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_2

    iget-object v1, v0, Lb/d/c;->n0:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lb/d/c;->n0:Landroid/widget/TextView;

    sget v1, Lb/d/n;->fingerprint_error_lockout:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_1
    iget-object p1, v0, Lb/d/c;->h0:Lb/d/c$c;

    new-instance v1, Lb/d/d;

    invoke-direct {v1, v0}, Lb/d/d;-><init>(Lb/d/c;)V

    iget-object v2, v0, Lb/d/c;->o0:Landroid/content/Context;

    invoke-static {v2}, Lb/d/c;->d0(Landroid/content/Context;)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    :goto_2
    iput-boolean v3, v0, Lb/d/c;->p0:Z

    goto :goto_3

    .line 8
    :pswitch_4
    iget-object v0, p0, Lb/d/c$c;->a:Lb/d/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v0, v2}, Lb/d/c;->f0(I)V

    iget-object v2, v0, Lb/d/c;->h0:Lb/d/c$c;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lb/d/c;->n0:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget v2, v0, Lb/d/c;->j0:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lb/d/c;->n0:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, v0, Lb/d/c;->h0:Lb/d/c$c;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lb/d/c;->o0:Landroid/content/Context;

    invoke-static {v0}, Lb/d/c;->d0(Landroid/content/Context;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 10
    :pswitch_5
    iget-object v0, p0, Lb/d/c$c;->a:Lb/d/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v0, v2}, Lb/d/c;->f0(I)V

    iget-object v2, v0, Lb/d/c;->h0:Lb/d/c$c;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lb/d/c;->n0:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget v3, v0, Lb/d/c;->j0:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lb/d/c;->n0:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, v0, Lb/d/c;->h0:Lb/d/c$c;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
