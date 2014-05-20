.class public final Lcom/tencent/mm/c/a/hq;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRl:Lcom/tencent/mm/c/a/hr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/hq;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/hq;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/hr;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hr;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/hq;->bRl:Lcom/tencent/mm/c/a/hr;

    .line 8
    const-string v0, "UpdatePackage"

    iput-object v0, p0, Lcom/tencent/mm/c/a/hq;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/hq;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/hq;->gbY:Z

    return-void
.end method
