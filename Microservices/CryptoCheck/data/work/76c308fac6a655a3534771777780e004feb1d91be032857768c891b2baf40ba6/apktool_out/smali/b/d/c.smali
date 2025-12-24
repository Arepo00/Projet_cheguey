.class public Lb/d/c;
.super Lb/l/a/c;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SyntheticAccessor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/c$c;
    }
.end annotation


# instance fields
.field public h0:Lb/d/c$c;

.field public i0:Landroid/os/Bundle;

.field public j0:I

.field public k0:I

.field public l0:I

.field public m0:Landroid/widget/ImageView;

.field public n0:Landroid/widget/TextView;

.field public o0:Landroid/content/Context;

.field public p0:Z

.field public q0:Landroid/content/DialogInterface$OnClickListener;

.field public final r0:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/l/a/c;-><init>()V

    new-instance v0, Lb/d/c$c;

    invoke-direct {v0, p0}, Lb/d/c$c;-><init>(Lb/d/c;)V

    iput-object v0, p0, Lb/d/c;->h0:Lb/d/c$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/d/c;->p0:Z

    new-instance v0, Lb/d/c$a;

    invoke-direct {v0, p0}, Lb/d/c$a;-><init>(Lb/d/c;)V

    iput-object v0, p0, Lb/d/c;->r0:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static d0(Landroid/content/Context;)I
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0, v0}, La/a/a/a/a;->y0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lb/l/a/c;->A(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/d/c;->o0:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const p1, 0x1010543

    invoke-virtual {p0, p1}, Lb/d/c;->e0(I)I

    move-result p1

    goto :goto_0

    :cond_0
    sget v0, Lb/d/j;->biometric_error_color:I

    invoke-static {p1, v0}, Lb/i/e/a;->a(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lb/d/c;->j0:I

    const p1, 0x1010038

    invoke-virtual {p0, p1}, Lb/d/c;->e0(I)I

    move-result p1

    iput p1, p0, Lb/d/c;->k0:I

    return-void
.end method

.method public G()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2
    iget-object v0, p0, Lb/d/c;->h0:Lb/d/c$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public H()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lb/d/c;->l0:I

    invoke-virtual {p0, v0}, Lb/d/c;->f0(I)V

    return-void
.end method

.method public I(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lb/l/a/c;->I(Landroid/os/Bundle;)V

    iget-object v0, p0, Lb/d/c;->i0:Landroid/os/Bundle;

    const-string v1, "SavedBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a0(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/d/c;->i0:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, "SavedBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lb/d/c;->i0:Landroid/os/Bundle;

    :cond_0
    new-instance p1, Lb/b/k/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lb/d/c;->i0:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1
    iget-object v1, p1, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lb/d/m;->fingerprint_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lb/d/l;->fingerprint_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lb/d/l;->fingerprint_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lb/d/c;->i0:Landroid/os/Bundle;

    const-string v4, "subtitle"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lb/d/c;->i0:Landroid/os/Bundle;

    const-string v3, "description"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sget v1, Lb/d/l;->fingerprint_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lb/d/c;->m0:Landroid/widget/ImageView;

    sget v1, Lb/d/l;->fingerprint_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lb/d/c;->n0:Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Lb/d/c;->i0:Landroid/os/Bundle;

    const-string v2, "allow_device_credential"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    sget v1, Lb/d/n;->confirm_device_credential_password:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->t(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lb/d/c;->i0:Landroid/os/Bundle;

    const-string v2, "negative_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    new-instance v2, Lb/d/c$b;

    invoke-direct {v2, p0}, Lb/d/c$b;-><init>(Lb/d/c;)V

    .line 6
    iget-object v3, p1, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$b;->t:Landroid/view/View;

    iput v6, v3, Landroidx/appcompat/app/AlertController$b;->s:I

    iput-boolean v6, v3, Landroidx/appcompat/app/AlertController$b;->u:Z

    .line 8
    invoke-virtual {p1}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/l/a/k;

    if-nez v0, :cond_0

    const-string v0, "FingerprintDialogFrag"

    const-string v1, "Failed to dismiss fingerprint dialog fragment. Fragment manager was null."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lb/l/a/c;->Z(ZZ)V

    return-void
.end method

.method public final e0(I)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lb/d/c;->o0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g()Lb/l/a/e;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public final f0(I)V
    .locals 5

    iget-object v0, p0, Lb/d/c;->m0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    iget v0, p0, Lb/d/c;->l0:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    if-ne p1, v2, :cond_2

    .line 1
    :goto_0
    sget v0, Lb/d/k;->fingerprint_dialog_fp_to_error:I

    goto :goto_2

    :cond_2
    if-ne v0, v2, :cond_3

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :goto_1
    sget v0, Lb/d/k;->fingerprint_dialog_error_to_fp:I

    :goto_2
    iget-object v4, p0, Lb/d/c;->o0:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    instance-of v4, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v4, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    :cond_6
    iget-object v4, p0, Lb/d/c;->m0:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_a

    iget v0, p0, Lb/d/c;->l0:I

    const/4 v4, 0x0

    if-nez v0, :cond_8

    if-ne p1, v3, :cond_8

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    if-ne v0, v3, :cond_9

    if-ne p1, v2, :cond_9

    goto :goto_4

    :cond_9
    if-ne v0, v2, :cond_7

    if-ne p1, v3, :cond_7

    :goto_4
    if-eqz v3, :cond_a

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_a
    iput p1, p0, Lb/d/c;->l0:I

    :cond_b
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->s:Lb/l/a/k;

    const-string v0, "FingerprintHelperFragment"

    .line 2
    invoke-virtual {p1, v0}, Lb/l/a/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lb/d/e;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb/d/e;->Z(I)V

    :cond_0
    return-void
.end method
