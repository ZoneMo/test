.class public final Lcom/tencent/mm/c/a/ce;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNH:Lcom/tencent/mm/c/a/cf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ce;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ce;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/cf;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cf;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ce;->bNH:Lcom/tencent/mm/c/a/cf;

    .line 8
    const-string v0, "GameMessageStorageNotify"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ce;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ce;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ce;->gbY:Z

    return-void
.end method
