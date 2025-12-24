.class public Lb/t/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lb/t/i;


# direct methods
.method public constructor <init>(Lb/t/i;)V
    .locals 0

    iput-object p1, p0, Lb/t/k;->a:Lb/t/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lb/t/k;->a:Lb/t/i;

    invoke-virtual {v0}, Lb/t/i;->n()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
