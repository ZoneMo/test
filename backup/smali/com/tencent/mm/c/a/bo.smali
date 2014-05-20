.class public final Lcom/tencent/mm/c/a/bo;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNr:Lcom/tencent/mm/c/a/bp;

.field public bNs:Lcom/tencent/mm/c/a/bq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/bo;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/bo;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/bp;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bo;->bNr:Lcom/tencent/mm/c/a/bp;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/bq;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bo;->bNs:Lcom/tencent/mm/c/a/bq;

    .line 8
    const-string v0, "FMsgGetName"

    iput-object v0, p0, Lcom/tencent/mm/c/a/bo;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/bo;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/bo;->gbY:Z

    return-void
.end method
