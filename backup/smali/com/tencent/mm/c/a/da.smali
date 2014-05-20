.class public final Lcom/tencent/mm/c/a/da;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bOb:Lcom/tencent/mm/c/a/db;

.field public bOc:Lcom/tencent/mm/c/a/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/da;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/da;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 20
    new-instance v0, Lcom/tencent/mm/c/a/db;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/db;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    .line 26
    new-instance v0, Lcom/tencent/mm/c/a/dc;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dc;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/da;->bOc:Lcom/tencent/mm/c/a/dc;

    .line 15
    const-string v0, "LbsroomLogic"

    iput-object v0, p0, Lcom/tencent/mm/c/a/da;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/da;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/da;->gbY:Z

    return-void
.end method
