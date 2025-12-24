.class public Lc/c/a/b/h0/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/c/a/b/t/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lc/c/a/b/t/c;)V
    .locals 0

    iput-object p2, p0, Lc/c/a/b/h0/c;->a:Lc/c/a/b/t/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/b/h0/c;->a:Lc/c/a/b/t/c;

    invoke-interface {p1}, Lc/c/a/b/t/c;->getRevealInfo()Lc/c/a/b/t/c$e;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lc/c/a/b/t/c$e;->c:F

    iget-object v0, p0, Lc/c/a/b/h0/c;->a:Lc/c/a/b/t/c;

    invoke-interface {v0, p1}, Lc/c/a/b/t/c;->setRevealInfo(Lc/c/a/b/t/c$e;)V

    return-void
.end method
