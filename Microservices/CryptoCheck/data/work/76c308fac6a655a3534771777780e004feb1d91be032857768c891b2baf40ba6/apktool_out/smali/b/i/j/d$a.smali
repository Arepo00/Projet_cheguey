.class public Lb/i/j/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/j/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lb/i/j/d;


# direct methods
.method public constructor <init>(Lb/i/j/d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/i/j/d$a;->c:Lb/i/j/d;

    iput-object p2, p0, Lb/i/j/d$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/i/j/d$a;->c:Lb/i/j/d;

    iget-object v0, v0, Lb/i/j/d;->d:Lb/i/j/c$c;

    iget-object v1, p0, Lb/i/j/d$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lb/i/j/c$c;->a(Ljava/lang/Object;)V

    return-void
.end method
