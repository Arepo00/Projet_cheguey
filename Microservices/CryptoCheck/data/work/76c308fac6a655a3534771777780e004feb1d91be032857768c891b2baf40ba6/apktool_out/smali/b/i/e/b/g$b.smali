.class public Lb/i/e/b/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/e/b/g;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb/i/e/b/g;


# direct methods
.method public constructor <init>(Lb/i/e/b/g;I)V
    .locals 0

    iput-object p1, p0, Lb/i/e/b/g$b;->c:Lb/i/e/b/g;

    iput p2, p0, Lb/i/e/b/g$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/i/e/b/g$b;->c:Lb/i/e/b/g;

    iget v1, p0, Lb/i/e/b/g$b;->b:I

    invoke-virtual {v0, v1}, Lb/i/e/b/g;->c(I)V

    return-void
.end method
