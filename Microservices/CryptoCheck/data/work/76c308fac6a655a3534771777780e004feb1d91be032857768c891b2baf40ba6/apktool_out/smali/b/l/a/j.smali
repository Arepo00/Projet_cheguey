.class public abstract Lb/l/a/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lb/l/a/h;


# instance fields
.field public b:Lb/l/a/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/l/a/h;

    invoke-direct {v0}, Lb/l/a/h;-><init>()V

    sput-object v0, Lb/l/a/j;->c:Lb/l/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/l/a/j;->b:Lb/l/a/h;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method
