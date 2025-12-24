.class public Lb/t/c$a;
.super Lb/t/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/t/c;->L(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/t/c;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/t/c$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lb/t/l;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/t/i;)V
    .locals 3

    iget-object v0, p0, Lb/t/c$a;->a:Landroid/view/View;

    .line 1
    sget-object v1, Lb/t/v;->a:Lb/t/b0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lb/t/b0;->e(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lb/t/c$a;->a:Landroid/view/View;

    .line 3
    sget-object v1, Lb/t/v;->a:Lb/t/b0;

    invoke-virtual {v1, v0}, Lb/t/b0;->a(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p0}, Lb/t/i;->w(Lb/t/i$d;)Lb/t/i;

    return-void
.end method
