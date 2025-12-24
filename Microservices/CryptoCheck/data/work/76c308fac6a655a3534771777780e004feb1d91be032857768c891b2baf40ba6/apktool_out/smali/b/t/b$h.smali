.class public Lb/t/b$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/t/b;->l(Landroid/view/ViewGroup;Lb/t/q;Lb/t/q;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/t/b$k;

.field public mViewBounds:Lb/t/b$k;


# direct methods
.method public constructor <init>(Lb/t/b;Lb/t/b$k;)V
    .locals 0

    iput-object p2, p0, Lb/t/b$h;->a:Lb/t/b$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object p1, p0, Lb/t/b$h;->a:Lb/t/b$k;

    iput-object p1, p0, Lb/t/b$h;->mViewBounds:Lb/t/b$k;

    return-void
.end method
