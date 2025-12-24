.class public Lb/i/m/q$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/m/q;->e(Landroid/view/View;Lb/i/m/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/i/m/r;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/i/m/q;Lb/i/m/r;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/i/m/q$a;->a:Lb/i/m/r;

    iput-object p3, p0, Lb/i/m/q$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/i/m/q$a;->a:Lb/i/m/r;

    iget-object v0, p0, Lb/i/m/q$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/i/m/r;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/i/m/q$a;->a:Lb/i/m/r;

    iget-object v0, p0, Lb/i/m/q$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/i/m/r;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/i/m/q$a;->a:Lb/i/m/r;

    iget-object v0, p0, Lb/i/m/q$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/i/m/r;->b(Landroid/view/View;)V

    return-void
.end method
