.class public final Lcom/tencent/mm/c/a/dz;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bOR:Lcom/tencent/mm/c/a/ea;

.field public bOS:Lcom/tencent/mm/c/a/eb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/dz;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/dz;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 14
    new-instance v0, Lcom/tencent/mm/c/a/ea;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ea;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/dz;->bOR:Lcom/tencent/mm/c/a/ea;

    .line 20
    new-instance v0, Lcom/tencent/mm/c/a/eb;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/eb;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/dz;->bOS:Lcom/tencent/mm/c/a/eb;

    .line 9
    const-string v0, "ProductOperation"

    iput-object v0, p0, Lcom/tencent/mm/c/a/dz;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/dz;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/dz;->gbY:Z

    return-void
.end method
