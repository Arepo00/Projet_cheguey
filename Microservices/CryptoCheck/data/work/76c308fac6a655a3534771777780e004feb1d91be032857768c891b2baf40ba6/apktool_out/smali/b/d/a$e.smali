.class public Lb/d/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/d/a;


# direct methods
.method public constructor <init>(Lb/d/a;)V
    .locals 0

    iput-object p1, p0, Lb/d/a$e;->b:Lb/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/d/a$e;->b:Lb/d/a;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/d/a;->g0:Z

    return-void
.end method
