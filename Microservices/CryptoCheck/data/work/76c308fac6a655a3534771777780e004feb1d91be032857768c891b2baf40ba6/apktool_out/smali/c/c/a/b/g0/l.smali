.class public Lc/c/a/b/g0/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/c/a/b/g0/h;


# direct methods
.method public constructor <init>(Lc/c/a/b/g0/h;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/g0/l;->a:Lc/c/a/b/g0/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/b/g0/l;->a:Lc/c/a/b/g0/h;

    iget-object v0, p1, Lc/c/a/b/g0/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1
    iget-boolean p1, p1, Lc/c/a/b/g0/h;->h:Z

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, p0, Lc/c/a/b/g0/l;->a:Lc/c/a/b/g0/h;

    .line 3
    iget-object p1, p1, Lc/c/a/b/g0/h;->n:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
