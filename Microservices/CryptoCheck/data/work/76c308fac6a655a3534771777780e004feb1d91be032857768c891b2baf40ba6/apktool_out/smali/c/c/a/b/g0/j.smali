.class public Lc/c/a/b/g0/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lc/c/a/b/g0/h;


# direct methods
.method public constructor <init>(Lc/c/a/b/g0/h;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/g0/j;->b:Lc/c/a/b/g0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lc/c/a/b/g0/j;->b:Lc/c/a/b/g0/h;

    iget-object p1, p1, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lc/c/a/b/g0/j;->b:Lc/c/a/b/g0/h;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lc/c/a/b/g0/h;->e(Lc/c/a/b/g0/h;Z)V

    iget-object p1, p0, Lc/c/a/b/g0/j;->b:Lc/c/a/b/g0/h;

    .line 1
    iput-boolean p2, p1, Lc/c/a/b/g0/h;->g:Z

    :cond_0
    return-void
.end method
