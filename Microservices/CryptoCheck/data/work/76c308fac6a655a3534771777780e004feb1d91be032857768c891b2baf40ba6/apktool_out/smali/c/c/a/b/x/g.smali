.class public Lc/c/a/b/x/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Lc/c/a/b/x/e;


# direct methods
.method public constructor <init>(Lc/c/a/b/x/e;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/x/g;->b:Lc/c/a/b/x/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lc/c/a/b/x/g;->b:Lc/c/a/b/x/e;

    .line 1
    iget-object v1, v0, Lc/c/a/b/x/e;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getRotation()F

    move-result v1

    iget v2, v0, Lc/c/a/b/x/e;->n:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    iput v1, v0, Lc/c/a/b/x/e;->n:F

    invoke-virtual {v0}, Lc/c/a/b/x/e;->s()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
