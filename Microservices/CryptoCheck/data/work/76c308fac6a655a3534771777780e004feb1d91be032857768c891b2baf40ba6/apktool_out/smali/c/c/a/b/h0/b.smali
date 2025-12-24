.class public Lc/c/a/b/h0/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/c/a/b/t/c;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lc/c/a/b/t/c;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Lc/c/a/b/h0/b;->a:Lc/c/a/b/t/c;

    iput-object p3, p0, Lc/c/a/b/h0/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/b/h0/b;->a:Lc/c/a/b/t/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lc/c/a/b/t/c;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/b/h0/b;->a:Lc/c/a/b/t/c;

    iget-object v0, p0, Lc/c/a/b/h0/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lc/c/a/b/t/c;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
