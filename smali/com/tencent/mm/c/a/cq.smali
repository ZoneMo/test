.class public final Lcom/tencent/mm/c/a/cq;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNT:Lcom/tencent/mm/c/a/cr;

.field public bNU:Lcom/tencent/mm/c/a/cs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/cq;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/cq;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/cr;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cr;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/cq;->bNT:Lcom/tencent/mm/c/a/cr;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/cs;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cs;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/cq;->bNU:Lcom/tencent/mm/c/a/cs;

    .line 8
    const-string v0, "GetSafeDeviceName"

    iput-object v0, p0, Lcom/tencent/mm/c/a/cq;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/cq;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/cq;->gbY:Z

    return-void
.end method
