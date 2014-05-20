.class public final Lcom/tencent/mm/c/a/fj;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQe:Lcom/tencent/mm/c/a/fk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/fj;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/fj;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/fk;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fk;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/fj;->bQe:Lcom/tencent/mm/c/a/fk;

    .line 8
    const-string v0, "ReportDownloadMD5Check"

    iput-object v0, p0, Lcom/tencent/mm/c/a/fj;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/fj;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/fj;->gbY:Z

    return-void
.end method
