.class public Lb/t/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lb/f/a;

.field public final synthetic b:Lb/t/i;


# direct methods
.method public constructor <init>(Lb/t/i;Lb/f/a;)V
    .locals 0

    iput-object p1, p0, Lb/t/j;->b:Lb/t/i;

    iput-object p2, p0, Lb/t/j;->a:Lb/f/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lb/t/j;->a:Lb/f/a;

    invoke-virtual {v0, p1}, Lb/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb/t/j;->b:Lb/t/i;

    iget-object v0, v0, Lb/t/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lb/t/j;->b:Lb/t/i;

    iget-object v0, v0, Lb/t/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
